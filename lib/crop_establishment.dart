import 'package:flutter/material.dart';
import 'package:temp_appv5/plugins/side_navigation_design.dart';
import 'package:temp_appv5/values/colors.dart';
import 'package:temp_appv5/values/menus.dart';

class CropEstablishment extends StatefulWidget {
  @override
  _CropEstablishmentState createState() => _CropEstablishmentState();
}

class _CropEstablishmentState extends State<CropEstablishment> {
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
                    image: AssetImage(mainMenu[4].image),
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
                        Text(mainMenu[4].name, style: TextStyle(
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
                  Text('Land Preparation\n', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text('Land preparation is defined as the physical preparation of soil to develop edaphic environment conducive for optimum plant growth after seed or seedling establishment . It also facilitates root growth, mixing of soil layers to increase availability of residual fertilizer, incorporation of residue to minimize weed growth, increasing soil organic matter content and reduce percolation losses of water and nutrient.\n'
                      'Paddy land preparation is basically divided into two as wet and dry land preparation. In wet land preparation the rice fields are first flooded with water before tillage while in dry land preparation the soil is not flooded before tillage .\n'
                    'The conventional land preparation practiced by majority of Sri Lankan rice farmers typically involves three steps namely primary, secondary and tertiary tillage. Draft buffalo, four or two wheel tractor, or a rotovator are used as power sources in land preparation.\n',

                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),
                  SizedBox(height: 10,),

                  SizedBox(height: 5,),
                  Text('Primary tillage', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text('\nInitial plowing is done to deepen the rhizosphere and to incooperate weeds and crop residues to soil. The moisture content of the soil determine the time of tillage. The tillage is done when the soil has the correct water contact and is friable for plowing or rotovating and harrowing where soil moisture content reduce 25-50% of the field capacity. Since continuous cropping and use of inproper plowing equipment have created a sandy shallow root zone plowing to a depth of about 20 cm is recommended.\n'
                      '\nMoldboard plough fixed to four or two wheel tractors, disc plough, animal and manual power are used for this operation. Soil condition, amount of weeds and crop residue and farmers requirement determine the number of tillage to be done and the type of plough to be used. If the time period between tillage and crop establishment is extended tillage should be repeated to prevent soil compaction. Moldboard plough is used for deep plowing and disc or conventional plough is used for medium tillage. Deep plowing is important to control perennial weeds like “Atawara“ (Panicum repens Linn.) and Purple nutsedge “ Kaladuru” (Cyprus rotandus L). Primary tillage is done 10-14 days before the secondary tillage.\n'
                      ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 5,),
                  Text('Secondary tillage', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),

                  Text(
                      '\nThe objective of secondary tillage is to break the big clumps of soil remained after secondary tillage into small clumps and to incooperate the weeds germinated late and remaining crop residues to the soil. This is done across to the direction of primary tillage by using two wheel tractor or animals. Secondary tillage involves clearing , repairing and replastering of bunts and done 7-10 days before crop establishment.\n'
                      ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 5,),
                  Text('Tertiary tillage', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),

                  Text(
                      '\nThis involves pudlling and leveling. Tillage of flooded soil is referred to as puddling. Soil puddling destroys soil structure, which reduces percolation rates and loss of water. This results low porosity and permeability and formation of a soil plow pan. During this operation, basal fertilizer is added and soil is puddled several times until the fertilizer is mixed to the soil well. Puddling is very efficient in clay soils that form deep cracks penetrating the plow pan at about 15 to 20 cm soil depth during the period of soil drying before land preparation. Although puddling reduces percolation rates of the soil, the action of puddling itself consumes water.\n'
                      '\nPuddling is followed by leveling to have a good seedbed suited for plant growth. A well-leveled field is a prerequisite for good water and crop management. When field is not level, water may stagnate in the depressions whereas higher parts may fall dry. This results uneven crop emergence, early growth, ,fertilizer distribution and possibly additional weeds. Effective land leveling will improve crop establishment and care, reduce the time and water required to irrigate the field and ensure more uniform distribution of water in the field. The Field is then kept for one day before sowing or planting until fine clay particles migrate downward and fill up the cracks and pores in the plow pan.\n'
                      '\nIt takes around 3-4 weeks to complete the and preparation by conventional manner while the labor consumption is also high. The main limiting factor is the consumption of large amount of water. It is estimated that conventional land preparation consumes 20-40% of the total water requirement of the crop. Due to these reasons farmers in some rice growing areas of Sri Lanka shift from conventional land preparation to non puddle land preparation methods such as minimum or zero tillage.\n'
                      ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 5,),
                  Text('Minimum Tillage', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),

                  Text(
                        '\nIn minimum tillage practice land preparation is kept to the minimum necessary for crop establishment and growth, thereby reducing time, labor and fuel costs and damage to soil structure. Primary tillage or row tillage is done and crop residues are kept in between rows. The bunds are not cleaned and weed control is done regularly by using herbicides. To compensate poor germination and seed lost by birds and rodents, 150-250kg/ha of seed paddy is used either as in dry or wet basis.\n'
                        ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 5,),
                  Text('Zero Tillage', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),

                  Text(
                      '\nNo Land preparation is practiced while pre emergent herbicides are used to control weeds before sowing. The seed paddy soaked in water for 48 hours and incubated with 24 hours are broadcasted to the moisten soil on the onset of rain. A higher seed rate (150-250 k/ha) iis used to maintain preferred pant density. Seven to ten days after germination fields are saturated with water and selected herbicides are used to control weeds later on.'
                      ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 10,),

                  Text('\nThe current cost of production of rough rice is Rs. 8.57 per kg. The cost of labor, farm power and tradable inputs constitutes '
                      '55%, 23% and 23% respectively. The labor cost has risen at a higher rate than other costs over the last few years',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 10,),

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
