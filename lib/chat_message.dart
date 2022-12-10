import 'package:flutter/material.dart';

const String _name = "Tanima";

class ChatMessage extends StatelessWidget{
  final String text ;
  // ignore: use_key_in_widget_constructors
  const ChatMessage({required this.text});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/user.jpg'),

            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text(_name,style: Theme.of(context).textTheme.subtitle1),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}