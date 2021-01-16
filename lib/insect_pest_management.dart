import 'package:flutter/material.dart';
import 'package:temp_appv5/plugins/side_navigation_design.dart';
import 'package:temp_appv5/values/colors.dart';
import 'package:temp_appv5/values/menus.dart';

class InsectFestManagement extends StatefulWidget {
  @override
  _InsectFestManagementState createState() => _InsectFestManagementState();
}

class _InsectFestManagementState extends State<InsectFestManagement> {
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
                    image: AssetImage(mainMenu[5].image),
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
                        Text(mainMenu[5].name, style: TextStyle(
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
                  Text('Major Insect Pests and Mite Pests of Rice', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),

                  Text(
                    '\nOn the basis of the extent and severity of the damage, the following insects are considered as major pests of rice in Sri Lanka (RRDI, 1996).'
                        '\n\nRice Thrips (RTH): Stenchaetothrips biformis (Bagnall) (Thysanoptera: Thripidae)'
                        '\nA pest of young rice seedlings. Adult and nymphs suck the cell sap from the leaf tissues. Damaged leaves roll inwards along the margins, feeding cause leaf drying resulting poor crop growth. The damage is severe under water stress conditions. Late planted crops are more prone for damage. Short duration traditional rice varieties like Dahanala, Kaluheenati, Kalubalawee are resistant to thrips. Higher trichome density on leaf surface found to be responsible for thrips resistance in rice. Effective control methods available:'
                        '\n\n\t1. Submerge infested crops intermittently for 1-2 days.'
                        '\n\n\t2. Drag a wet cloth on the seedlings'
                        '\n\n\t3. Apply recommended insecticides if difficult to control'
                        '\n\n\t4. For endemic areas use a recommended seed-dressing formulation'
                        '\n\nBrown Plant Hopper (BPH): Nilapavata lugens (Stal) (Homoptera: Delphacidae)'
                        '\nHeavy infestations produce symptoms of hopper burn. Leaves dry and turn brown after insect feeding, and patches of burned plants are often lodged. It is a vector of grassy stunt and ragged stunt virus diseases. The rice plant is most sensitive to attack at late vegetative and reproductive stages.'
                        '\n\nThe economic threshold for BPH at booting stage is 2 per hill and at heading 5 per hill. Since spiders are considered major predator of BPH, the economic threshold levels are adjusted according to the number of spiders present. Number of effective predators and parasites are known.'
                        '\nPtb 33, a variety with a high level of resistance to BPH, is extensively used in the breeding program. A number of varieties with moderate level of resistance to BPH have been developed: Bg 379-2, Bg 300, Bg 403, Bg 304, Bg 357, Bg 358, Bg 360.'
                        '\nEffective control methods available:'
                        '\n\n\t1. Cultivate resistant varieties.'
                        '\n\n\t2. Draining the paddy field to reduce moisture help prevent BPH multiplication.'
                        '\n\n\t3. Indiscriminate use of insecticides during vegetative stage known to cause BPH outbreaks. Use insecticides only when and where needed during vegetative stage especially for the control of leaf eating caterpillars.'
                        '\n\n\t4. Monitor crop regularly for signs of early BPH infestations.'
                        '\n\n\t5. Select a safer insecticide if required.',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  Text('\nThe current cost of production of rough rice is Rs. 8.57 per kg. The cost of labor, farm power and tradable inputs constitutes '
                      '\n55%, 23% and 23% respectively. The labor cost has risen at a higher rate than other costs over the last few years',
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
