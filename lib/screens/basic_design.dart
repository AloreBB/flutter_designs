// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  // const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen
          const Image(
              image: AssetImage(
                  'assets/animated-colorful-landscape-wallpaper.jpg')),

          // Título
          const Title(),

          // Button Section
          const ButtonSection(),

          // Description
          Container(
            margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 20 ),
            child: const Text('Tempor sit proident et quis ea qui esse ad. In aute Lorem sint consectetur do consequat laboris dolore et quis qui ex cupidatat ad. Elit cupidatat adipisicing quis fugiat consequat non incididunt in ullamco labore exercitation voluptate ipsum.')
          )

        ],
      ),
      floatingActionButton: BackButton( onPressed: () => Navigator.popAndPushNamed(context, 'home_screen')),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campgoround',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [

          CustomButton( icon: Icons.call, text: 'Call'),
          CustomButton( icon: Icons.room, text: 'Route'),
          CustomButton( icon: Icons.share, text: 'Share'),
          
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( this.icon, color: Colors.blue, size: 30),
        const SizedBox(height: 5),
        Text( this.text,
            style: const TextStyle(
              color: Colors.blue, 
              // fontWeight: FontWeight.w400
              )
            )
      ],
    );
  }
}
