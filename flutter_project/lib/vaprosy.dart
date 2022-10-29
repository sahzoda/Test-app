import 'package:flutter_project/question.dart';

List<QuestionModel> questions= [
  QuestionModel(
    "1) Сколько областей в Кыргызстане?",
    {
      "5": false,
      "7": true,
      "10": false,
    },
  ),
  QuestionModel(
    "2)Какой вид траспорта наиболее развит?",
    {
      "автомобильный": true,
      "воздушный": false,
      "трудопроводный":false,
    },
  ),
  QuestionModel(
    "3)Когда началась первая мировая война?",
    {
      "1914":true,
      "1941":false,
      "1939":false,
    }
  ),
  QuestionModel("4)Когда началась вторая мировая война?",
    {
      "1941":false,
      "1939": true,
      "1914": false,
    }
  ),
  QuestionModel("5) Когда КР обрела независимость?",
   {
    "1940": false,
    "1991":true,
    "1999":false,
   }
   )
];
