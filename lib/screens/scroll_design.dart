import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  final boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
          colors: [
            Color(0xff75ebcb),
            Color(0xff50c2dd)
          ])        
  );

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          // Fisicas para iOS
          // physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2()
          ],
        ),
      ),
      floatingActionButton: BackButton( onPressed: () => Navigator.popAndPushNamed(context, 'home_screen')),
    );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background image
        Backgorund(),

        // Main Content - Columns
        MainContent()

      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final textStyle = TextStyle( fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white );
    
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox( height: 50 ),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
    
          // TODO: EXPANDED
          Expanded(child: Container()),
    
          const Icon( Icons.keyboard_arrow_down_rounded, size: 100, color: Colors.white,)
    
        ],
      ),
    );
  }
}

class Backgorund extends StatelessWidget {
  const Backgorund({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff50c2dd),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff50c2dd),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 40),
            child: Text('Bienvenido', style: TextStyle( color: Colors.white, fontSize: 30 )),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
          ),
        ),
      ),
    );
  }
}



