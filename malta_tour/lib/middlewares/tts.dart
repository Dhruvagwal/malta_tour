import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeech {
  static FlutterTts tts = FlutterTts();

  static getVoices(){
    return tts.getVoices;
  }

  static initTTS(Map<String,String> language) {
    tts.setLanguage(language["locale"] as String);
    tts.setVoice(language);
  }

  static speak(String text) {
    tts.speak(text);
  }
}
