import 'package:flutter/material.dart';
import 'package:party_ui_task/animations/fadeAnimation_page.dart';

class HomePage extends StatefulWidget {
static final String id ="home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             FadeAnimationPage(1, Expanded(child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 SizedBox(height: 80,),
                 Text("Find the best parties near you", style: TextStyle(color: Colors.yellow, fontSize: 40),),
                 SizedBox(height: 30,),
                 Text("Let us find you a tutorial for your interest", style: TextStyle(color: Colors.greenAccent, fontSize: 25, fontWeight: FontWeight.bold),),
               ],
             )),) ,
              isLogin ?
              FadeAnimationPage(1.2, Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.orange,
                ),
                child: Center(
                  child: Text("Start", style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              )):
              FadeAnimationPage(1.2, Row(
                children: [
                  Expanded(child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red
                    ),
                    child: Center(
                      child: Text("Google", style: TextStyle(color: Colors.white, fontSize: 18),),
                    ),
                  ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue
                    ),
                    child: Center(
                      child: Text("Facebook", style: TextStyle(color: Colors.white, fontSize: 18),),
                    ),
                  ),)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
