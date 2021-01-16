import 'package:flutter/material.dart';
import 'package:temp_appv5/plugins/side_navigation_design.dart';
import 'package:temp_appv5/values/colors.dart';
import 'package:temp_appv5/values/menus.dart';

class WeedManagement extends StatefulWidget {
  @override
  _WeedManagementState createState() => _WeedManagementState();
}

class _WeedManagementState extends State<WeedManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      drawer: SideNavigationDesign(),
      appBar: AppBar(
        backgroundColor:  secondaryColor,
        title: Text("INFORMATION", style: TextStyle(
            color: highlightFontColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w500
        ),),
        centerTitle: true,
        iconTheme: IconThemeData(color: highlightFontColor),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[

            SizedBox(height: 5.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(mainMenu[7].image),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(primaryLightColor, BlendMode.colorBurn)
                ),
                borderRadius: BorderRadius.circular(20.0),
                color: primaryLightColor,
              ),

              child: Stack(
                children: <Widget>[
                  Center(
                    child: Column(
                      children: <Widget>[
                        Text(mainMenu[7].name, style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: primaryFontColor
                        ), textAlign: TextAlign.center,),
                        Text("Some Brief",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: primaryFontColor
                          ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Weed flora varies from place to place due to type of rice culture, soil type hydrology, tillage, cultural practices and irrigation pattern etc.'
                      '\n\nGrasses are dominant in irrigated systems'
                      '\n\nSedges are dominant in rainfed system'
                      '\n\nWeed problems are more severe in irrigated rice fields due to rotation at pattern of water issues'
                      '\n\nNearly 134 weed species identified from rice field in Sri Lanka belongs to 32 taxonomic families'
                      '\n\nMore than 70 species - grasses'
                      '\n\nMore than 50 species - sedges'
                      '\n\nMore than 20 species - broad leaves'
                      '\n\nHowever 10-20 species may be considered as economically important in rice culture Grasses are considered as the major weed group in rice fields in Sri Lanka.'
                      ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.left,),

                  Text('\nIt is projected that the demand for rice will increase at 1.1% per year and to meet the rice production should grow at the rate '
                      '\n\nof 2.9% per year. Increasing the cropping intensity and national average yield are the options available to achieve this '
                      'production targets.',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.left,),

                  SizedBox(height: 5,),
                  Text('\nMethod of water loss', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),

                  Text('\nThe current cost of production of rough rice is Rs. 8.57 per kg. The cost of labor, farm power and tradable inputs constitutes '
                      '\n\n55%, 23% and 23% respectively. The labor cost has risen at a higher rate than other costs over the last few years',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.left,),

                  SizedBox(height: 10,),

                  Text('\nWhile the global demand for rice will increase at 1.95% the production will increase at 1.62% per annum making the tradable '
                      'rice volume to be doubled in another 20 years time. As a result the rice price would decline at 0.73% per year. On the other '
                      'hand the domestic price of rice on par with Thai A1 super (the cheapest in the world market) would be higher by 50 -70 USD per '
                      't than the internationally traded rice. This situation will place Sri Lanka under increase pressure to produce cheaper and high '
                      'quality rice in the coming years.',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.left,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
