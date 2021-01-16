import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp_appv5/about.dart';
import 'package:temp_appv5/climate.dart';
import 'package:temp_appv5/crop_establishment.dart';
import 'package:temp_appv5/disease_management.dart';
import 'package:temp_appv5/insect_pest_management.dart';
import 'package:temp_appv5/plugins/card_lg.dart';
import 'package:temp_appv5/plugins/side_navigation_design.dart';
import 'package:temp_appv5/recommended_varities.dart';
import 'package:temp_appv5/rice_cultivation.dart';
import 'package:temp_appv5/values/colors.dart';
import 'package:temp_appv5/water_management.dart';
import 'package:temp_appv5/weed_management.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryLightColor,
      drawer: SideNavigationDesign(),
      appBar: AppBar(
        backgroundColor:  secondaryColor,
        title: Text("INFORMATION MENU", style: TextStyle(
          color: highlightFontColor,
          fontSize: 18.0,
          fontWeight: FontWeight.w500
        ),),
        centerTitle: true,
        iconTheme: IconThemeData(color: highlightFontColor),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [secondaryLightColor, secondaryColor])
        ),
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
//              Container(
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
//                    GestureDetector(
//                      child: Icon(Icons.menu, color: highlightFontColor),
//                      onTap: (){print("Side Navigation");},
//                    ),
//
////                    SizedBox(width: 10.0,),
//                    Text("INFORMATION MENU", style: TextStyle(
//                      color: highlightFontColor,
//                      fontSize: 20.0,
//                    ),),
//                    Icon(Icons.account_circle, color: highlightFontColor),
//                  ],
//                ),
//              ),

              SizedBox(height: 5.0,),
//              Notification Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("GET INFORMATION", style: TextStyle(
                    color: highlightFontColor,
                  ),),
                  Text("NAVIGATION", style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 2.0,),
                  Divider(height:2.0, color: primaryLightColor, thickness: 3,),
                  SizedBox(height: 10.0,),
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width-40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _createCard('RICE CULTIVATION', 'assets/images/sample (1).jpeg', "Internal Flutter widgets like buttons or form fields use exactly the same pattern."),
                        _createCard('CLIMATE', 'assets/images/sample (2).jpg', "Internal Flutter widgets like buttons or form fields use exactly the same pattern."),
                        _createCard('RECOMMENDED VARIETIES', 'assets/images/sample (3).jpg', "Internal Flutter widgets like buttons or form fields use exactly the same pattern."),
                        _createCard('CROP ESTABLISHMENT', 'assets/images/sample (4).jpg', "Internal Flutter widgets like buttons or form fields use exactly the same pattern."),
                        _createCard('WATER MANAGEMENT', 'assets/images/sample (5).jpg', "Internal Flutter widgets like buttons or form fields use exactly the same pattern."),
                        _createCard('INSECT PEST MANAGEMENT', 'assets/images/sample (6).jpg', "Internal Flutter widgets like buttons or form fields use exactly the same pattern."),
                        _createCard('DISEASE MANAGEMENT', 'assets/images/sample (7).jpg', "Internal Flutter widgets like buttons or form fields use exactly the same pattern."),
                        _createCard('WEED MANAGEMENT', 'assets/images/sample (8).jpg', "Internal Flutter widgets like buttons or form fields use exactly the same pattern."),
                      ],
                    )

//                    ListView.builder(
////                      itemCount: cards.length,
//                        itemBuilder: (context, index){
//                          return Container();
//                        }
//                    ),

                  ),
                  SizedBox(height: 10.0,),
                  Text("USE FOLLOWING OPTIONS", style: TextStyle(
                    color: highlightFontColor,
                  ),),
                  Text("MENU", style: TextStyle(
                      color: highlightFontColor,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 2.0,),
                  Divider(height:2.0, color: primaryLightColor, thickness: 3,),
                  SizedBox(height: 10.0,),
                  Container(
                      height: 100.0,
                      width: MediaQuery.of(context).size.width-40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _createIcon('CALENDER', Icon(Icons.calendar_today, color: Colors.white, size: 38), "Cultivation Schedule"),
                          _createIcon('WEATHER', Icon(Icons.cloud, color: Colors.white, size: 38), "Local Weather Info"),
                          _createIcon('CROP', Icon(Icons.trending_up, color: Colors.white, size: 38), "Statistical Info"),
                          _createIcon('OTHER', Icon(Icons.more, color: Colors.white, size: 38), "Other Settings"),
                        ],
                      )

//                    ListView.builder(
////                      itemCount: cards.length,
//                        itemBuilder: (context, index){
//                          return Container();
//                        }
//                    ),

                  ),
                  SizedBox(height: 10.0,),
                  Text("GET NOTIFIED", style: TextStyle(
                    color: highlightFontColor,
                  ),),
                  Text("NOTIFICATIONS", style: TextStyle(
                      color: highlightFontColor,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 2.0,),
                  Divider(height:2.0, color: primaryLightColor, thickness: 3,),
                  SizedBox(height: 10.0,),
                  Container(
                    child: Column(
                      children: <Widget>[
                        _createCardGrad("NOTIFICATION TITLE", Icon(Icons.cloud, color: Colors.white, size: 38), "The current cost of production of rough rice is Rs. 8.57 per kg. The cost of labor, farm power and tradable inputs constitutes 55%, 23% and 23% respectively."),
                        _createCardGrad("NOTIFICATION TITLE", Icon(Icons.cloud, color: Colors.white, size: 38), "The current cost of production of rough rice is Rs. 8.57 per kg. The cost of labor, farm power and tradable inputs constitutes 55%, 23% and 23% respectively."),
                        _createCardGrad("NOTIFICATION TITLE", Icon(Icons.cloud, color: Colors.white, size: 38), "The current cost of production of rough rice is Rs. 8.57 per kg. The cost of labor, farm power and tradable inputs constitutes 55%, 23% and 23% respectively."),
                      ],
                    )
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _createCard(String name, String image, String info){
    return InkWell(
        onTap: (){
          if(name=="RICE CULTIVATION"){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RiceCultivation()));
          } if(name=="CLIMATE") {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Climate()));
          } if(name=="RECOMMENDED VARIETIES") {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RecommendedVarities()));
          } if(name=="CROP ESTABLISHMENT") {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CropEstablishment()));
          } if(name=="WATER MANAGEMENT") {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WaterManagement()));
          } if(name=="INSECT PEST MANAGEMENT") {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InsectFestManagement()));
          } if(name=="DISEASE MANAGEMENT") {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DiseaseManagement()));
          } if(name=="WEED MANAGEMENT") {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WeedManagement()));
          }

        },
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color:  primaryLightColor,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(primaryLightColor, BlendMode.colorBurn)
              ),
              border: Border.all(
                  color:  primaryFontColor,
                  style: BorderStyle.solid,
                  width: 0.75
              ),
            ),

            width: MediaQuery.of(context).size.width-40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 100,),
                      Text(
                        name,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        info,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.white70,

                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

  Widget _createCardGrad(String title, Icon ico, String info){
    return InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WeedManagement()));

        },
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color:  primaryLightColor,
              gradient: LinearGradient(colors: [primaryLightColor, primaryLightColor, highlightFontColor, alterColor],),
              border: Border.all(
                  color:  primaryFontColor,
                  style: BorderStyle.solid,
                  width: 0.75
              ),
            ),

            width: MediaQuery.of(context).size.width-40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 5,),
                      Text(
                        title,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        info,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Colors.white70,

                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

  Widget _createIcon(String name, Icon ico, String info){
    return InkWell(
        onTap: (){
          //selectCard(name);
          if(name=="RICE CULTIVATION"){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RiceCultivation()));
          }
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>About()));
        },
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [primaryLightColor, primaryLightColor, highlightFontColor, alterColor],),
              borderRadius: BorderRadius.circular(10.0),
              color:  primaryLightColor,
              border: Border.all(
                  color:  primaryFontColor,
                  style: BorderStyle.solid,
                  width: 0.75
              ),
            ),
            height: 100.0,
            width: 85.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10,),
//                      Icon(ico, color: Colors.white, size: 38,),
                      ico,
                      SizedBox(height: 5,),
                      Text(
                        name,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        info,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 10.0,
                          color: Colors.white70,

                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
