import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionModel{
  String question;
  Map<String,bool>answers;

  QuestionModel(this.question, this.answers);
}
class Tovarlar{
 final String name ;
  final int price;
  final String description;

Tovarlar ({
  this.description,
  this.name,
  this.price,
  });
  
  static  List<Tovarlar> tovar =[
  Tovarlar(
    description: "red",
    name: "Iphone",
    price: 100,
    
  ),
   
];
 
}
  