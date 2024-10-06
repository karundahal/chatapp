





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/home_screen.dart';

import '../../main.dart';

class Loginscreen extends StatefulWidget {

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool _isAnimate = false;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 5000),(){
      _isAnimate=true;
    });
    super.initState();
  }
  @override


  Widget build(BuildContext context) {
    mq=MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome to guff'),
        ),

      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 100),
            top: mq.height * .15,

              width: mq.width * .5,
              right: _isAnimate?mq.width * .23: -mq.width * .50 ,
              child: Image.asset('assets/images/wechat.png')),

          Positioned(

              bottom: mq.height * .15,

              width: mq.width * .8,
              left: mq.width * .1,
              height: mq.height * .07,

              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent.shade100,
                    elevation: 1,
                    shape: StadiumBorder(),
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                  }, icon: Image.asset('assets/images/google.png.png',height: mq.height * .03,),
                  label:RichText(

                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                        ),
                    children: [
                      const TextSpan(text: 'Sign in with '),
                      TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.w500,

                          ),
                          text:'Google'),
                    ]
                  )) ,
              ))],
      ),
    );
  }
}