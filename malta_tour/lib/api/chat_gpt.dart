import "dart:convert";

import "package:http/http.dart" as http;

String OPENAI_API_KEY = "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";

class ApiService {
  static String BASE_URL = "https://api.openai.com/v1/chat/completions";
  static Map<String, String> headers = {
    "Content-Type": "application/json",
    "Authorization": "Bearer $OPENAI_API_KEY"
  };
  static sendMessage(String? prompt) async {
    
    var res = await http.post(Uri.parse(BASE_URL),
        headers: headers,
        body: jsonEncode({
          "model": "gpt-3.5-turbo",
          // "stop":[" user:", " assistant:"],
          "frequency_penalty":0.0,
          "presence_penalty":0.0,
          "top_p":1,
          "temperature":0,
          "max_tokens":1024,
          "messages": [
            {"role": "user", "content": prompt}
          ]
        }));

    if (res.statusCode == 200) {
      var data = jsonDecode(utf8.decode(res.bodyBytes));
      print(data);
      var msg = data['choices'][0];
      return msg["message"]["content"];
    } else {
      print("Error: ");
    }
  }
}
