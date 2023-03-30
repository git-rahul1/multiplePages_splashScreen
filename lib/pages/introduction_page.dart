
import 'package:animation_splash_screen/pages/login_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'images/rahul.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset( assetName, width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('images/devxhub.png', 100),
          ),
        ),
      ),
      globalFooter: SizedBox(

        width: double.infinity,
        height: 60,
        child: ElevatedButton(

          child:  Text(
            'Let\'s go right away!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent,
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Md. Rahul Reza",
          body:
          "Contact with flutter app developer .",
          image: _buildImage('images/rahul.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "DevXHUb",
          body:
          "Developer Experience Hub",
          image: _buildImage('images/devxhub.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Lets Start",
          body:
          "Thanks to visit.",
          image: _buildImage('images/one.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back,color: Colors.white,),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
      next: const Icon(Icons.arrow_forward,color: Colors.white),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white,width: 5.0),
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),

          ),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}