import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../constants.dart';
import '../models/data.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
bool _isExpanded = false;

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

bool _isRotated = false;
  void onIconClicked() {
    setState(() {
    _isRotated = !_isRotated;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(width: screenWidth,
        color: Colors.white,
        padding: EdgeInsets.only(top: screenHeight*0.02,bottom: screenHeight*0.02),
        child: FloatingActionButton(onPressed: onIconClicked,
          backgroundColor: kPrimeColor,
          child: _isRotated? Icon(Icons.fiber_manual_record):Icon(Icons.mic),
        ),),
      // floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling ,
      appBar: AppBar(centerTitle: true, title: Image(image: AssetImage('assets/logo/logo.png')),backgroundColor: kSecondaryColor,toolbarHeight: screenHeight*0.15,elevation: 0,),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: screenHeight*0.4,left: screenWidth*0.1,right: screenWidth*0.1),
        child: Column(

          children: [

            Container(
              margin: EdgeInsets.only(bottom: screenHeight*0.4,top: screenHeight*0.05),
              child: _isRotated?AnimatedTextKit(
                displayFullTextOnTap: true,
                isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(text,textStyle: kTextStyle,cursor: "...\$"),
                  ],
                onFinished: (){
                   Text(text,style: kTextStyle,);
                },
            ):
              Text("Your Answer is comming...\$",style: kTextStyle,),)

          ],
        ),
      ),
    );
  }
}

