import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableChat extends StatelessWidget {

  //const ResuableChat({Key? key}) : super(key: key);
  ReusableChat({ required  this.name, required this.text ,required this.time   });
  final String name;
  final String text;
  final String time;
  @override
  Widget build(BuildContext context) {

    return Container(
      //margin: EdgeInsets.all(10),
     margin: EdgeInsets.only(top: 15.0, bottom: 5.0, right: 20.0,left: 10),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
        //color: chat.unread ? Colors.black12 : Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
        BoxShadow(
        //color :Color(0x802196F3),
        color: Colors.transparent,
        blurRadius: 10.0,
        spreadRadius: 0.0,
        offset: Offset(6.0, 6.0), // shadow direction: bottom right
      )
      ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color(0xff7C7B9B),
                child: IconButton(
                  iconSize: 30.0,
                  icon: Icon(CupertinoIcons.profile_circled,
                    color: Colors.white,),
                  onPressed:  (){},
                ),
              ),
              SizedBox(width: 6.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
             // chat.unread
                  //?
                Container(
                width: 40.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: Color(0xff7C7B9B),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                alignment: Alignment.center,
                child: Text(
                  'NEW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
                  //: Text(''),
            ],
          ),
        ],
      ),


  );
  }
}
