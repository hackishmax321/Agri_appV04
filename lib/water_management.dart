import 'package:flutter/material.dart';
import 'package:temp_appv5/plugins/side_navigation_design.dart';
import 'package:temp_appv5/values/colors.dart';
import 'package:temp_appv5/values/menus.dart';

class WaterManagement extends StatefulWidget {
  @override
  _WaterManagementState createState() => _WaterManagementState();
}

class _WaterManagementState extends State<WaterManagement> {
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
                  Text('Introduction', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text('\nRice (Orysa sativa L) is cultivated either as a rain fed or as a supplementary or fully irrigated crop. The system of rice cultivation mainly depends on the available rainfall and its distribution. In general, except in semi arid areas where rice cultivation is marginal, average rainfall in rice growing areas of Sri Lanka can meet at least part of the water requirement for a rice crop during it cropping season. Thus in strict terms there is no fully irrigated rice cultivation in Sri Lanka. Rice is a semi aquatic plant and does not need standing water for a successful rice crop. However, uncertainty of water supply, either through irrigation or rain, and to reduce weed infestation rice is always cultivated as a crop with standing water. Response of the rice plant to water stress is varied with its growth stage and other agronomic practices. Direct sown rice crop is less prone to drought than a transplanted crop. Highest water use is during the preparation of land, thus land preparation with minimum timing and maximum use of rain water at the correct time of the season is recommended.'
                      ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 5,),
                  Text('\nEffect of water deficit', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text(
                      '\nStress has been defined as "any environmental factor capable of inducing a potentially injurious strain in plants". Water is a major constituent of tissue, a reagent in chemical reaction, a solvent for and mode of translocation for metabolites and minerals within plant and is essential for cell enlargement through increasing turgor pressure. With the occurrence of water deficits many of the physiological processes associated with growth are affected and under severe deficits, death of plants may result. The effect of water stress may vary with the variety, degree and duration of water stress and the growth stage of the rice crop. Water requirement is low at the seedling stage. Unless there is severe water stress the effect during this stage could be recovered. Water stress during vegetative stage reduces plant height, tiller number and leaf area. However, the effect during this stage is varied with the severity of stress and age of the crop. Long duration varieties cause less yield damage than short duration varieties as long vegetative period could help the plant to recover when water stress is relieved. Leaf expansion during vegetative stage is very sensitive to water stress. Cell enlargement requires turgor to extend the cell wall and a gradient in water potential to bring water into the enlarging cell. Thus water stress decreases leaf area which reduces the intercepted solar radiation. Rice leaves in general have a very high transpiration rate thus under high radiation levels rice plant may suffer due to mid day wilting.'
                      '\n\nRice plant can transpire its potential rate even when soil moisture was around field capacity. Therefore maintaining saturated water regime through the crop duration is best for saving water and increasing grain yield. However, if the weed pressure is high maintaining standing water until the closure of the canopy and then maintaining saturated soil conditions could increase water saving without reduction in yield. Soil cracking should be prevented to reduce percolation during subsequent irrigation. In general rice plant uses less than 5% of the water absorbed through roots from the soil. The rest is lost through transpiration which helps to maintain leaf energy balance of the crop. Decrease leaf water potential closes stomata and decrease transpiration which in turn increase leaf temperature. Stomatal closure could be due to the accumulation of Abscisic acid which is a drought tolerant mechanism. Even though closure of stomates improves water use efficiency under water stress conditions this decreases carbon assimilation due to reduction in physical transfer of CO2 molecule and increase leaf temperature reduces the biochemical processes. Decrease solubility of CO2 may also reduce CO2 assimilation. Translocation of assimilates could also decrease under desiccating conditions due to reduction is source and sink capacity and decrease water potential. There is a marked genotypic variation in rooting pattern in rice in response to water stress. Drought resistant varieties possess deep and thick roots in contrast to this and shallow roots. Thick roots in rice are positively correlated with xylem vessel area are vital to the conductance of water from soil to the upper parts of the plant to meet the evaporative demand. It has also observed that water stress reduces the uptake of nutrients which could be due to the fact that most of the elements are absorbed via roots through passive diffusion. Direct seeded rice are more tolerant to water stress than transplanted rice which could be due to its superior root system. Increase N nutrition increases the susceptibility of the rice plant to water stress. Rice is most susceptible to water stress during reproductive stage. Water stress at or before PI reduces panicle number most, but all stresses regardless of crop stage or duration significantly reduce panicle number. Water stress after PI reduces the potential spikelet number.'
                      '\n\nWater stress at heading reduces rate of exertion of the panicle. Anthesis and ripening stages are the most sensitive stage for water stress. Water stress during anthesis increased unfilled spiklets. Spikelet sterility decreases with decrease leaf water potential during meiotic stage of pollen development. Mild stress affect sink more than source, whereas severe stress affects both. Stress during grain filling decrease translocation of assimilates to the grain which decreases grain weight and increase empty grains. Increase canopy temperature above 280C due to water stress linearly increase relative spikelet sterility. The ability of a plant to grow satisfactorily when exposed to periods of water stress is called drought resistance. Mechanism of drought resistance in rice could be either tolerance, avoidance, escape or recovery. The "True" drought avoiding plants could posses mechanisms to maintain favourable water status, either by conserving water or by their ability to supply water to above ground organs even during drought stress. Root depth is a plant trait most strongly related to drought avoidance in upland rice culture which is an avoidance mechanism. Rice plant that can escape or evade drought through the adjustment of the life cycle is also an important trait for Drought resistance. Leaf rolling or reduced leaf area, stomatal closure and delayed flowering under water stress conditions compared to well watered condition could be escape mechanisms. Tolerance implies the plant tissues to withstand water stress. The degree of tolerance in rice vary among varieties and among growth stages within a variety. Osmorogulation in certain varieties of rice is a tolerance mechanism. Recovery of a rice plant after relieving drought stress is varied with the variety, the severity of stress and growth stage.'
                      '\n\nExcess water effects'
                      '\n\nTo be developed'
                      ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 5,),
                  Text('Water requirement of a rice crop in Sri Lanka', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text(
                        '\nWater requirement for a successful rice crop varies with the method of land preparation, method of crop establishment and duration of the rice crop. It also varies with the soil, environmental conditions and the management of the subsequent rice crop.\n'
                        ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 5,),
                  Text('Method of water loss', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text(
                        '\nWater is lost through evaporation (E) from free water surface, transpiration (T) from the crop, seepage and percolation of the soil, bunt leakages and runoff from the field. Seepage and percolation vary with the edaphic environment which could be partially controlled through proper management. However, evapotranspiration is determined mainly by the vapor pressure deficit and the canopy size which is beyond the control of a farmer. Bund leakages and runoff from the field is totally under the farmers’ control. Therefore the main determinants of water requirement (WR) are evapotranspiration, seepage and percolation (S & P) rates, which could be summarized as follows.'
                        '\n\nWR = E + T + (S + P)',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 5,),
                  Text('Water requirement for Land Preparation', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text(
                        '\nWater requirement for land preparation could be minimal with dry land preparation which is popularly known as "Kekulan" or "Manawary" system of cultivation, which needs little or no supplementary moisture. However, majority of rice is cultivated as lowland crop. The duration of land preparation mainly determine the amount of water required which is dependent on the type of land class and the weed infestation. Water requirement for lowland land preparation is determine by the amount required for soil soaking, losses during operations and maintaining standing water in the field. Water requirement for soaking the land depends on the initial soil moisture content and surface conditions of the land and soil type. The requirement may vary from 30 mm. to 125 mm. of water as there may be losses through cracks and other ways. After first ploughing field is inundated with water to keep the soil and weeds under water which facilitates decomposition. During the period when standing water is maintained on the surface, water is lost through evaporation, seepage and percolation. Average rate of evaporation in a sunny day in the Dry Zone during "Maha" is about 3.5 mm and during "Yala" is about 6 mm. Seepage and percolation rates are highly variable depending on the soil type (porosity), topography and depth to the water table. Reddish Brown Earth (RBE) soil has an average S & P rate of 7-10 mm/day and Low Humic Gley (LHG) soils it is around 3-4 mm/day. Therefore to maintain standing water or to keep the soil saturated, water should be supplied to meet the S, P and evaporation requirements. Thus the water requirement increases with the increase in duration of land preparation. A minimum period of two weeks is required for conventional method of land preparation. In general water requirement for land preparation in the dry zone of Sri Lanka vary from 150 mm on LHG to 300 mm on RBE\n'
                        'Water requirement during crop growth'
                        '\n\nWater is lost from a rice field mainly through evapotranspiration, seepage, percolation, surface runoff & bund leakages which could vary depending on crop, environment and the field management factors. Evapotranspiration from a rice crop canopy is a function of the size of the crop (leaf area), water availability and the environmental conditions. Evapotranspiration increases with increase leaf area. Variation in rice crop ET during its growth is shown in fig. 1. Evapotranspiration is low at early stages of crop growth and achieve maximum towards heading. Hence the frequency of irrigation should increase accordingly towards flowering to meet the increasing demand for water. Experiment conducted at Agriculture Research Station, Mahailluppallama showed that the total ET in the dry zone during in Yala season in higher than during Maha season (Table 1).'
                        '\n\nTable 1.Total Evapotranspiration (mm) form a 4 1/2 and 3 month rice crop during Yala and Maha seasons at Mahailluppallama',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.justify,),

                  SizedBox(height: 5,),
                  Text('Water requirement during crop growth', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text(
                        '\nWater is lost from a rice field mainly through evapotranspiration, seepage, percolation, surface runoff & bund leakages which could vary depending on crop, environment and the field management factors. Evapotranspiration from a rice crop canopy is a function of the size of the crop (leaf area), water availability and the environmental conditions. Evapotranspiration increases with increase leaf area. Variation in rice crop ET during its growth is shown in fig. 1. Evapotranspiration is low at early stages of crop growth and achieve maximum towards heading. Hence the frequency of irrigation should increase accordingly towards flowering to meet the increasing demand for water. Experiment conducted at Agriculture Research Station, Mahailluppallama showed that the total ET in the dry zone during in Yala season in higher than during Maha season (Table 1).'
                        '\n\nTable 1.Total Evapotranspiration (mm) form a 4 1/2 and 3 month rice crop during Yala and Maha seasons at Mahailluppallama\n',
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
