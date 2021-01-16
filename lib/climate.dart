import 'package:flutter/material.dart';
import 'package:temp_appv5/plugins/side_navigation_design.dart';
import 'package:temp_appv5/values/colors.dart';
import 'package:temp_appv5/values/menus.dart';

class Climate extends StatefulWidget {
  @override
  _ClimateState createState() => _ClimateState();
}

class _ClimateState extends State<Climate> {
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
            SizedBox(height: 5.0,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(mainMenu[0].image),
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
                        Text(mainMenu[1].name, style: TextStyle(
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
                  SizedBox(height: 5,),
                  Text('Introduction', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text('\nDespite its relatively small aerial extent, Sri Lanka exemplifies a variety of climatic conditions depending on the '
                      'geographical settings of respective locations. The average annual rainfall of the island varies from about 900 mm '
                      '(Maha Lewaya, Hambantota) to over 5,500 mm (Kenilworth Estate, Ginigathhena). Being located in the low latitudes between '
                      '6 and 10 N and surrounded by the Indian Ocean, Sri Lanka shows very typical maritime-tropical temperature conditions. These '
                      'conditions are characterized by greater daily than annual temperature ranges and moderate average temperatures in comparison '
                      'with the more continental tropics. Temperature conditions in Sri Lanka are also characterized by a significant temperature '
                      'decrease in the central highlands according to the vertical atmospheric lapse rate. '
                      'Sri Lanka has traditionally been generalized in to three climatic zones in terms of Wet Zone in the southwestern region '
                      'including central hill country, and Dry Zone covering predominantly, northern and eastern part of the country, being separated '
                      'by an Intermediate zone, skirting the central hills except in the south and the west (Map 1). In differentiating aforesaid three '
                      'climatic zones, rainfall, contribution of southwest monsoon rains, soils, land use and vegetation have been widely used. The Wet '
                      'zone receives relatively high mean annual rainfall over 2,500 mm without pronounced dry periods. The Dry zone receives a mean '
                      'annual rainfall of less than 1,750 mm with a distinct dry season from May to September. The Intermediate zone receives a mean '
                      'annual rainfall between 1,750 to 2,500 mm with a short and less prominent dry season.',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  Text('\nAs low temperature is an important climatic factor affecting plant growth in the Wet and Intermediate zones of Sri Lanka, a sub-division based on the altitude takes into account the temperature limitations in these two climatic regions. In this delineation, the Low-country is demarcated as the land below 300 m in elevation and the Mid-country with elevation between 300 - 900 m while the Up-country is the land above 900 m elevation (Map 2). Both Wet and Intermediate zones spread across all three categories of elevation while the Dry zone is confined to the Low-country resulting seven agro-climatic zones covering the entire island (Map 3). These seven agro-climatic zones have further sub-divided into Agro-Ecological Regions (AER) with a total of 46 AERs covering the entire island (Map 4).'
                      'The delineation of AER boundaries of Sri Lanka has been based on the rainfall regime, terrain characteristics, predominant soil type, land use and vegetation so that each AER represents an uniform agro-climate, soils and terrain conditions and as such would support a particular farming system where certain range of crops and farming practices find their best expression.'
                      'Detailed studies on climatology of Sri Lanka has identified that "climatic year" or "hydrological year" of the island begins in March and not in January so that seasonal weather rhythm or more specifically the rainfall seasons ranges from March to February. It is generally accepted that there are four rainfall seasons in Sri Lanka:',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),


                  Text('\nMarch - April -- First Inter Monsoon (FIM) rains\n\nMay - September --South West Monsoon (SWM) rains\n\nOctober - November -- Second Inter Monsoon (SIM) rains\n'
                      '\nNovember - February -- North East Monsoon (NEM) rains\n\n'
                      'These rainfall seasons do not bring homogeneous rainfall regimes over the whole island and it is the main cause to exhibit such a high agro-ecological diversity of the country despite its relatively small aerial extent. Out of these four rainfall seasons, two consecutive rainy seasons make up the major growing seasons of Sri Lanka, namely Yala and Maha seasons. Generally Yala season is the combination of FIM and SWM rains. However, since SWM rains are not effective over the Dry zone it is only the FIM rains that fall during the Yala season in the Dry zone from mid March to early May. Being effective only for two months, the Yala season is considered as the minor growing season of the Dry zone. The major growing season of the whole country, Maha begins with arrival of SIM rains in Mid September/October and continues up to late January/February with the NEM rains.\n'
                      'Rice is grown under more diverse environmental conditions than any other major food crop in the world and the situation remains as the same in Sri Lanka too. Except in almost all AERs in the Up country Wet and Intermediate zones where minimum temperature at nighttime is limiting, paddy is the most common land use in valley bottoms in the all other AERs of the country. Solar radiation is not a limiting factor for rice growth in almost all rice growing regions of Sri Lanka. However, when all other conditions such as water, nutrients and temperature are non-limiting, the intensity of sunlight may determine the yield level depending on the location and season. For example, in the Wet zone, solar radiation may limit the rice yield during Yala season due to high cloud cover arising from the southwest monsoonal circulation whereas a similar situation could expect in the Dry zone during Maha season due to overcast conditions that may result due to weather systems formed in the Bay of Bengal and northeast monsoonal circulation.'
                      'Climate of the Low Country Wet Zone\n'
                      '\nThis agro-climatic region has been sub-divided in to five AERs (Map 4) where rice is the main land use in inland valleys and flood plains. The expected annual rainfall at the 75% probability level in this region ranges from 1,700 to 3,200 mm depending on the agro-ecological region (Table 1). Its average maximum temperature ranges from 32 to 35 0C. The highest values are being recorded during the period of late February to early May. The average minimum temperature is ranged from 22 to 24 0C where the lowest values are generally observed during the period of December to February, the winter months of the island. The day time relative humidity is generally ranged from 60 to 75 percent where as nighttime values may reach even up to 90 per cent at anytime of the year.',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 5,),
                  Text('\nClimate of the Low Country Wet Zone', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),

                  Text('\nThis agro-climatic region has been sub-divided in to five AERs (Map 4) where rice is the main land use in inland valleys and flood plains. The expected annual rainfall at the 75% probability level in this region ranges from 1,700 to 3,200 mm depending on the agro-ecological region (Table 1). Its average maximum temperature ranges from 32 to 35 0C. The highest values are being recorded during the period of late February to early May. The average minimum temperature is ranged from 22 to 24 0C where the lowest values are generally observed during the period of December to February, the winter months of the island. The day time relative humidity is generally ranged from 60 to 75 percent where as nighttime values may reach even up to 90 per cent at anytime of the year.',
                    style: TextStyle(
                    color: secondaryFontColor,
                    fontSize: 14.0,
                  ),textAlign: TextAlign.justify,),

                  Text('\nWhile the global demand for rice will increase at 1.95% the production will increase at 1.62% per annum making the tradable '
                      'rice volume to be doubled in another 20 years time. As a result the rice price would decline at 0.73% per year. On the other '
                      'hand the domestic price of rice on par with Thai A1 super (the cheapest in the world market) would be higher by 50 -70 USD per '
                      't than the internationally traded rice. This situation will place Sri Lanka under increase pressure to produce cheaper and high '
                      'quality rice in the coming years.',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
