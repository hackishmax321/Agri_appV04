import 'package:flutter/material.dart';
import 'package:temp_appv5/climate.dart';
import 'package:temp_appv5/crop_establishment.dart';
import 'package:temp_appv5/disease_management.dart';
import 'package:temp_appv5/insect_pest_management.dart';
import 'package:temp_appv5/recommended_varities.dart';
import 'package:temp_appv5/rice_cultivation.dart';
import 'package:temp_appv5/values/colors.dart';
import 'package:temp_appv5/values/menus.dart';
import 'package:temp_appv5/water_management.dart';
import 'package:temp_appv5/weed_management.dart';

class SideNavigationDesign extends StatefulWidget {
  @override
  _SideNavigationDesignState createState() => _SideNavigationDesignState();
}

class _SideNavigationDesignState extends State<SideNavigationDesign> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: primaryLightColor,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              color: alterColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height:50.0),
                    Container(
                      height:100,
                      width:100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(width: 2.0, color: Colors.white70),
                        image: DecorationImage(
                            image: AssetImage('assets/images/user2.png'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(primaryLightColor, BlendMode.colorBurn)
                        ),
                      ),
                      child: Image.asset('assets/upgrade.png', scale: 2),
                    ),
                    Text('User Name', style: TextStyle(
                      color: highlightFontColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),),
                    Text('Email', style: TextStyle(
                      color: highlightFontColor,
                      fontSize: 16.0,
                    ),),

                  ],
                ),
              ),
            ),

//            Column(
//              children: mainMenu.asMap().entries.map((MapEntry entry){
//                return _createMenuItem(entry.key, entry.value);
//              }),
//            ),

            Divider(height:2.0, color: Colors.white70),
            Text("INFORMATION MENU", style: TextStyle(
                color: Colors.white70,
                fontSize: 10.0,
                fontWeight: FontWeight.bold
            ),),
            Divider(height:2.0, color: Colors.white70),

            Container(
              padding: EdgeInsets.only(left:10.0, top:10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RiceCultivation()));},
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width:40),
                          Text(mainMenu[0].name, style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(height:2.0, color: Colors.white70),

            Container(
              padding: EdgeInsets.only(left:10.0, top:10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Climate()));},
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width:40),
                          Text(mainMenu[1].name, style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(height:2.0, color: Colors.white70),

            Container(
              padding: EdgeInsets.only(left:10.0, top:10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RecommendedVarities()));},
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width:40),
                          Text(mainMenu[2].name, style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(height:2.0, color: Colors.white70),

            Container(
              padding: EdgeInsets.only(left:10.0, top:10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CropEstablishment()));},
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width:40),
                          Text(mainMenu[3].name, style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(height:2.0, color: Colors.white70),

            Container(
              padding: EdgeInsets.only(left:10.0, top:10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WaterManagement()));},
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width:40),
                          Text(mainMenu[4].name, style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(height:2.0, color: Colors.white70),

            Container(
              padding: EdgeInsets.only(left:10.0, top:10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InsectFestManagement()));},
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width:40),
                          Text(mainMenu[5].name, style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(height:2.0, color: Colors.white70),

            Container(
              padding: EdgeInsets.only(left:10.0, top:10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DiseaseManagement()));},
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width:40),
                          Text(mainMenu[6].name, style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(height:2.0, color: Colors.white70),

            Container(
              padding: EdgeInsets.only(left:10.0, top:10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WeedManagement()));},
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width:40),
                          Text(mainMenu[7].name, style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(height:2.0, color: Colors.white70),
            Text("MAIN ITEMS", style: TextStyle(
              color: Colors.white70,
              fontSize: 10.0,
              fontWeight: FontWeight.bold
            ),),
            Divider(height:2.0, color: Colors.white70),

            Container(
              padding: EdgeInsets.only(left:10.0, top:10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RiceCultivation()));},
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width:40),
                          Icon(Icons.dashboard, size: 30.0, color: Colors.white,),
                          SizedBox(width: 30.0,),
                          Text("MAIN MENU", style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(height:2.0, color: Colors.white70),
            Container(
              padding: EdgeInsets.only(left:10.0, top:10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(width:40),
                          Icon(Icons.settings, size: 30.0, color: Colors.white,),
                          SizedBox(width: 30.0,),
                          Text("SETTINGS", style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Divider(height:2.0, color: Colors.white70),
          ],
        ),
      ),
    );
  }

  Widget _createMenuItem(String name, String info){
    return Container(
      padding: EdgeInsets.only(left:20.0, top:10, bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Column(
        children: <Widget>[
          InkWell(
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(width:40),
                  Text('DASHBOARD', style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),),

                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}
