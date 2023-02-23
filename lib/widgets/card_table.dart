// ignore_for_file: unnecessary_this, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            GestureDetector(
              onTap: () =>  Navigator.popAndPushNamed(context, 'basic_design'),
              child: _SingleCard(
                icon: Icons.window_rounded, 
                color: Color.fromRGBO(38,158,246, 1), 
                text: 'General'
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.popAndPushNamed(context, 'scroll_screen'),
              child: _SingleCard(
                icon: Icons.directions_bus_rounded, 
                color: Color.fromRGBO(125,83,251, 1), 
                text: 'Transport'
              ),
            ),
          ]
        ),
        TableRow(
          children: [
            GestureDetector(
              // onTap: () => Navigator.popAndPushNamed(context, 'basic_design'),
              child: _SingleCard(
                icon: Icons.shopping_bag_rounded, 
                color: Colors.pink, 
                text: 'Shopping'
              ),
            ),
            _SingleCard(
              icon: Icons.blinds_closed, 
              color: Colors.orange, 
              text: 'Bills'
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.movie_creation_rounded, 
              color: Colors.blue, 
              text: 'Entreteinment'
            ),
            _SingleCard(
              icon: Icons.graphic_eq_rounded, 
              color: Colors.green, 
              text: 'Grocery'
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.alarm_on_rounded, 
              color: Colors.purple, 
              text: 'Alarm'
            ),
            _SingleCard(
              icon: Icons.date_range_rounded, 
              color: Colors.yellow, 
              text: 'Dates'
            ),
          ]
        )
        
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  _SingleCard({
    super.key, 
    required this.icon, 
    required this.color, 
    required this.text
  });


  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   padding: const EdgeInsets.all(12),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(100),
          //     color: this.color
          //   ),
          //   child: Icon( icon, size: 35, color: Colors.white),
          // ),
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon( this.icon, size: 35, color: Colors.white,),
            radius: 30,
          ),
          const SizedBox(height: 10),
          Text( this.text, style: TextStyle( color: this.color, fontSize: 18),)
        ])
      );
  }
}

class _CardBackground extends StatelessWidget {
  
  final Widget child;

  _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(30)
          ),
            child: child,
          ),
        ),
      ),
    );
  }
}
