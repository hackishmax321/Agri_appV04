import 'package:flutter/material.dart';
import 'package:temp_appv5/values/colors.dart';

class CardLg extends StatefulWidget {
  @override
  _CardLgState createState() => _CardLgState();
}

class _CardLgState extends State<CardLg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      width: MediaQuery.of(context).size.width,
      color: primaryLightColor,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
              Text("SAMPLE", style: TextStyle(
                fontSize: 16.0,
                color: primaryFontColor
              ),)
          ],
        ),
      ),
    );
  }

  Widget _createCard(String name, Icons ico, String info){
    return InkWell(
      onTap: (){
        //selectCard(name);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:  primaryLightColor,
          border: Border.all(
              color: primaryFontColor,
              style: BorderStyle.solid,
              width: 0.75
          ),
        ),
        height: 100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
//                  Text(
//                    info,
//                    style: TextStyle(
//                      fontFamily: 'Montserrat',
//                      fontSize: 12.0,
//                      color: selectedCard == title? Colors.white: Colors.black,
//
//                    ),
//                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createIcon(String name, Icons ico, String info){
    return InkWell(
      onTap: (){
        //selectCard(name);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:  primaryLightColor,
          border: Border.all(
              color: primaryFontColor,
              style: BorderStyle.solid,
              width: 0.75
          ),
        ),
        height: 100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
//                  Text(
//                    info,
//                    style: TextStyle(
//                      fontFamily: 'Montserrat',
//                      fontSize: 12.0,
//                      color: selectedCard == title? Colors.white: Colors.black,
//
//                    ),
//                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
