import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_project/vaprosy.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  bool isPressed = false;
  Color trueAnswer= Colors.green;
  Color falseAnswer=Colors.red;
  Color btnColor=Color(0xFF117eeb);
  int number= 0;
  void test() {
    setState(() {});
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      appBar: AppBar(
        title: Center(
          child: Text(
            "Тапшырма - 07",
          ),
        ),
      ),
      body: PageView.builder(
        
        itemCount: questions.length,
        itemBuilder: (context, index){
        return Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, 
          children: [SizedBox(
            height: 30,
            width: double.infinity,
           child: Center(
             child: Text(questions  [index].question ,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              ),
           ),
          ),
              SizedBox(
                height: 50,
              ),
              for( int i = 0; i< questions[index].answers.length;i ++)
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 18.0,),
                height: 30,
                color: isPressed?questions[index].answers.entries.toList()[i].value?
                trueAnswer:falseAnswer:btnColor,
                child: TextButton(
                  onPressed: (() {
                    setState(() {
                        isPressed=true;
                      });
       if(questions[index].answers.entries.toList()[i].value)
         { } else{
                   setState(() {
                    btnColor=falseAnswer;
                  });
                 }
                   }), 
                child: Text(questions[index].answers.keys.toList()[i],
                style: TextStyle(color: Colors.black,
                fontSize: 20,
                ),
                ),
                  ),
                    ),
                     SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  TextButton(onPressed: (() {
                    
                  })
                   child: Text("Next Question",
                   style: TextStyle(color: Colors.white),
                   )
                   )
                ],
              )
             
              ], ),
        );
        },
      )
   );
  }
  
  }

