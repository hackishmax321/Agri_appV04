import 'package:flutter/material.dart';
import 'package:temp_appv5/plugins/side_navigation_design.dart';
import 'package:temp_appv5/values/colors.dart';
import 'package:temp_appv5/values/menus.dart';

class RecommendedVarities extends StatefulWidget {
  @override
  _RecommendedVaritiesState createState() => _RecommendedVaritiesState();
}

class _RecommendedVaritiesState extends State<RecommendedVarities> {
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
                    image: AssetImage(mainMenu[1].image),
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
                  Text('\nRice is the single most important crop occupying 34 percent (0.77 /million ha) of the total cultivated area in Sri Lanka. '
                      'On average 560,000 ha are cultivated during maha and 310,000 ha during yala making the average annual extent sown with rice '
                      'to about 870,000 ha. About 1.8 million farm families are engaged in paddy cultivation island-wide. Sri Lanka currently produces '
                      '2.7 million t of rough rice annually and satisfies around 95 percent of the domestic requirement. Rice provides 45% total calorie '
                      'and 40% total protein requirement of an average Sri Lankan. The per capita consumption of rice fluctuates around 100 kg per year '
                      'depending on the price of rice, bread and wheat flour.',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),
                  Text('\nIt is projected that the demand for rice will increase at 1.1% per year and to meet the rice production should grow at the rate '
                      'of 2.9% per year. Increasing the cropping intensity and national average yield are the options available to achieve this '
                      'production targets.',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  Text('\nThe current cost of production of rough rice is Rs. 8.57 per kg. The cost of labor, farm power and tradable inputs constitutes '
                      '55%, 23% and 23% respectively. The labor cost has risen at a higher rate than other costs over the last few years',
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
                  SizedBox(height: 10,),

//                  Container(
//                    child: Column(
//                      children: <Widget>[
//                        DataTable(
//
//                          columns: [
//                            DataColumn(
//                              label: Text('Variety by mat.duration'),
//                              numeric: false,
//                              tooltip: "Duration Values"
//                            ),
//                            DataColumn(
//                                label: Text('Year released'),
//                                numeric: true,
//                                tooltip: "Duration Values"
//                            ),
//                            DataColumn(
//                                label: Text('Pedigree'),
//                                numeric: false,
//                                tooltip: "Duration Values"
//                            ),
////                            DataColumn(
////                                label: Text('Recommended for'),
////                                numeric: false,
////                                tooltip: "Duration Values"
////                            ),
////                            DataColumn(
////                                label: Text('Maturity duration (days)'),
////                                numeric: false,
////                                tooltip: "Duration Values"
////                            ),
////                            DataColumn(
////                                label: Text('Higher yield Recorded (t/ha)'),
////                                numeric: true,
////                                tooltip: "Duration Values"
////                            ),
////
////                            DataColumn(
////                                label: Text('Attributes'),
////                                numeric: false,
////                                tooltip: "Duration Values"
////                            ),
//                          ],
//                          rows: [
//                            DataRow(
//                              cells: [
//                                DataCell(Text("H-9")),
//                                DataCell(Text("1968")),
//                                DataCell(Text("C104/Mas/Panduruwee")),
////                                DataCell(Text("ML 1")),
////                                DataCell(Text("50-180")),
////                                DataCell(Text("3.5")),
////                                DataCell(Text("PS")),
//                              ]
//                            )
//                          ],
//                          columnSpacing: 1,
//                          horizontalMargin: 5,
//                        )
//                      ],
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
