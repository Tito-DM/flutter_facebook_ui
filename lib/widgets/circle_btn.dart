import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function onpressed;

  const CircleButton(
      {Key key, this.icon, @required this.iconSize, @required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(color: 
      Colors.grey[200], shape:
       BoxShape.circle),
      child: IconButton(
        onPressed: onpressed,
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black,
      ),
    );
  }
}
