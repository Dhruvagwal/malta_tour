// Created by Dhruv Aggarwal @dhruvagwal
import 'package:flutter/material.dart';
import '../styles/colors.dart';
import "../content/langauges_list.dart";

class LangaugeWidget extends StatefulWidget {
  final List languages;
  Function changeLanguage;
  String selectedLanguage;
  LangaugeWidget(
      {super.key,
      required this.languages,
      required this.changeLanguage,
      required this.selectedLanguage});

  @override
  State<LangaugeWidget> createState() => _LangaugeWidgetState();
}

// var items = [
//   'Item 1',
//   'Item 2',
//   'Item 3',
//   'Item 4',
//   'Item 5',
// ];

class _LangaugeWidgetState extends State<LangaugeWidget> {
  LanguageLocal locals = LanguageLocal();
  String search = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.7),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Select Language",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    search = value;
                  });
                },
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12.5)),
                  labelText: "Search",
                  filled: true,
                  labelStyle: TextStyle(
                    color: Colors.grey[500],
                  ),
                  fillColor: Colors.black12,
                ),
              ),
              ...widget.languages
                  .where((lang) => locals
                      .getDisplayLanguage(lang["name"].split("-")[0])["name"]
                      .toLowerCase()
                      .contains(search.toLowerCase()))
                  .map((lang) {
                var index = widget.languages.indexOf(lang);
                var name = locals
                    .getDisplayLanguage(lang["name"].split("-")[0])["name"];
                if (name.length == 0) {
                  return Container();
                }
                return GestureDetector(
                  onTap: () {
                    widget.changeLanguage(index);
                    setState(() {
                      widget.selectedLanguage = widget.languages[index]["name"];
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '${index + 1}: ${name} ( ${lang["locale"]} )',
                      style: TextStyle(
                        fontSize: 16,
                        color: widget.languages
                                    .where((element) =>
                                        element["name"] ==
                                        widget.selectedLanguage)
                                    .toList()[0]["name"] ==
                                widget.languages[index]["name"]
                            ? bgColor
                            : Colors.white,
                      ),
                    ),
                  ),
                );
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}

// Created by Dhruv Aggarwal @dhruvagwal