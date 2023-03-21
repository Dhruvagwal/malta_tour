// Created by Dhruv Aggarwal @dhruvagwal
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../api/chat_gpt.dart';
import '../middlewares/tts.dart';
import '../models/chat_model.dart';
import '../styles/colors.dart';
import '../widgets/chat_bubble_widget.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import '../widgets/language_widget.dart';
import 'package:speech_to_text/speech_to_text.dart';
import "../content/gpt.dart";
import "../content/data.dart";
import "../middlewares/location.dart";
// import "../middlewares/tts.dart";
// import 'package:devicelocale/devicelocale.dart';

// SELECT GB VOICE

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

const DEFAULT_TEXT = "Tap To Speak";

class _SpeechScreenState extends State<SpeechScreen> {
  SpeechToText speechToText = SpeechToText();
  LocationState locationState = LocationState();
  late List<Map<String, String>> languages;
  String selectedLanguage = "en-gb-x-gbb-network";
  var text =
      "Welcome to Malta, I'm your AI expert tour guide from A4 Malta";
  var isListening = false;
  var isLoading = false;
  int _ttsCount = 0;
  final List<ChatMessage> messages = [];

  var scrollController = ScrollController();
  final controller = ScrollController();

  scrollMethod() {
    // scrollController.animateTo(scrollController.position.maxScrollExtent,
    //     duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  initState() {
    TextToSpeech.getVoices().then((res) {
      setState(() {
        languages = List<Map<String, String>>.from(res
            .map((item) => {
                  "name": "${item["name"]}",
                  "locale": '${item["locale"]}',
                })
            .toList());
      });
      _showModal();
      _setTTSASR();
    });
    TextToSpeech.speak(text);
    locationState.locateMe((res) {
      var output = messgaes_coord.where((mesage) {
        var distance = Geolocator.distanceBetween(res.latitude, res.longitude,
            mesage.location[0], mesage.location[1]);
        return distance <= 400 && distance >= 600;
      }).toList();
      if (output.length > 0 && _ttsCount != 1) {
        _ttsCount = 1;
        TextToSpeech.speak(output[0].message);
      }
      var out_output = messgaes_coord.where((mesage) {
        var distance = Geolocator.distanceBetween(res.latitude, res.longitude,
            mesage.location[0], mesage.location[1]);
        return distance >= 3000;
      }).toList();
      if (output.length > 0 && _ttsCount != 1) {
        _ttsCount = 0;
      }
    });
    super.initState();
  }

  _setTTSASR() {
    TextToSpeech.initTTS(languages.where((element) => selectedLanguage==element["name"]).toList()[0]);
    // print(languages[selectedLanguage]);
  }

  _changeLanguage(index) {
    setState(() {
      selectedLanguage = languages.where((element) => languages[index]["name"]==element["name"]).toList()[0]["name"] as String;
    });
    _setTTSASR();
  }

  _onTapDown() async {
    setState(() {
      text = "";
    });
    var available = await speechToText.initialize();
    // print(available);
    if (available) {
      setState(() {
        isListening = true;
      });
      speechToText.listen(
          onResult: (result) {
            setState(() {
              text = result.recognizedWords;
            });
          },
          localeId: languages.where((element) => selectedLanguage==element["name"]).toList()[0]["locale"]);
    }
  }

  _onTapUp() {
    setState(() {
      isListening = false;
    });
    Future.delayed(const Duration(milliseconds: 50), () async {
      speechToText.stop();
      if (text.length > 0) {
        String conversation = [
          ...default_message,
          ...(messages.length > 2
              ? messages.sublist(messages.length - 2, messages.length)
              : messages.sublist(0, messages.length)),
          ChatMessage(
              text:
                  "${text} and speak only in ${languages.where((element) => selectedLanguage==element["name"]).toList()[0]["name"]} and no translation required",
              type: ChatMessageType.user)
        ]
            .map((item) {
              return '${item.type == ChatMessageType.user ? "user" : "assistant"}: ${item.text}';
            })
            .toList()
            .join(" ")
            .toString();
        messages.add(ChatMessage(text: text, type: ChatMessageType.user));
        setState(() {
          isLoading = true;
        });
        var msg = await ApiService.sendMessage(conversation);
        msg = msg
            .replaceAll("assistant:", "")
            .replaceAll("AI:", "")
            .replaceAll("Assistant:", "")
            .replaceAll("ai:", "")
            .replaceAll("Ai:", "")
            .replaceAll("user:", "")
            .replaceAll("User:", "")
            .trim();
        scrollMethod();
        setState(() {
          messages.add(ChatMessage(text: msg, type: ChatMessageType.bot));
        });
        TextToSpeech.speak(msg);
        setState(() {
          text = msg;
          isLoading = false;
          // text = "";
          // Here you can write your code for open new view
        });
      } else {
        setState(() {
          text = DEFAULT_TEXT;
        });
      }
    });
  }

  _showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: chatBgColor,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.8,
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Your Session History",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 24,
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: messages.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  controller: scrollController,
                  itemBuilder: (BuildContext context, int index) {
                    return ChatBubble(
                      text: '${messages[index].text}',
                      type: messages[index].type as ChatMessageType,
                    );
                  },
                )),
              ],
            ),
          );
        });
  }

  _showModal() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: chatBgColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: LangaugeWidget(
                languages: languages,
                changeLanguage: _changeLanguage,
                selectedLanguage: selectedLanguage),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    print(languages);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // ShaderMask(
          //   shaderCallback: (rect) {
          //     return const LinearGradient(
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //       colors: [Colors.black, Colors.transparent],
          //     ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          //   },
          //   blendMode: BlendMode.dstIn,
          //   child:
          // ),
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                bgImage,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          // Positioned(
          //   bottom: -200,
          //   width: MediaQuery.of(context).size.width,
          //   child: Image.network(
          //     avatarImage,
          //     height: MediaQuery.of(context).size.height,
          //     fit: BoxFit.contain,
          //   ),
          // ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ConstrainedBox(
                    constraints: new BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.1,
                      maxHeight: MediaQuery.of(context).size.height * 0.2,
                    ),
                    child: FadingEdgeScrollView.fromSingleChildScrollView(
                      child: SingleChildScrollView(
                        controller: controller,
                        child: isLoading
                            ? CircularProgressIndicator()
                            : Text(text,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: isListening
                                        ? FontWeight.w300
                                        : FontWeight.w400)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            _showModal();
                          },
                          icon: Icon(
                            Icons.language,
                            color: bgColor,
                          )),
                      // Spacer(),
                      // SizedBox(
                      //   width: 50,
                      // ),
                      AvatarGlow(
                        endRadius: 50.0,
                        animate: isListening,
                        duration: Duration(milliseconds: 2000),
                        glowColor: close,
                        repeat: true,
                        repeatPauseDuration: Duration(milliseconds: 100),
                        showTwoGlows: true,
                        child: GestureDetector(
                          onTap: () {
                            !isListening ? _onTapDown() : _onTapUp();
                          },
                          child: CircleAvatar(
                            backgroundColor: isListening ? close : bgColor,
                            radius: 35,
                            child: Icon(
                              isListening ? Icons.close : Icons.mic_none,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      // Spacer(),
                      IconButton(
                          onPressed: () {
                            _showBottomSheet();
                          },
                          icon: Icon(
                            Icons.chat_bubble,
                            color: bgColor,
                          ))
                    ],
                  ),
                  Text(
                    isListening ? "Tap to Close" : "Tap to Speak",
                    style: TextStyle(
                        fontFamily: 'Android101',
                        color: textColor,),
                  ),
                  SizedBox(
                    height: 12,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.transparent, Colors.black])),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              child: SafeArea(
                child: Text("A4 Malta Tour Guide",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Android101',
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// Created by Dhruv Aggarwal @dhruvagwal