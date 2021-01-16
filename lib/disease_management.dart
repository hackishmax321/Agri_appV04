import 'package:flutter/material.dart';
import 'package:temp_appv5/plugins/side_navigation_design.dart';
import 'package:temp_appv5/values/colors.dart';
import 'package:temp_appv5/values/menus.dart';

class DiseaseManagement extends StatefulWidget {
  @override
  _DiseaseManagementState createState() => _DiseaseManagementState();
}

class _DiseaseManagementState extends State<DiseaseManagement> {
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
                    image: AssetImage(mainMenu[6].image),
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
                        Text(mainMenu[6].name, style: TextStyle(
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
                  Text('How to diagnose rice diseases accurately in the field', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text('\nNumerous disease of rice, caused by fungi, bacteria, viruses and nematode have been recorded in literature. Some diseases occur where ever rice in grown. Some are of both regional and international important, others occur in local areas. Some diseases reach epidemic proportion and causes serious crop losses which others causes only negligible crop losses. This articles deals with only rice diseases of national importance which may causes considerable crop losses,'

                      '\n\nAccurate diagnosis and timely solving of field problems in rice crop is a vital component of crop management which assures optimum use of inputs for enhanced productivity leading to increased profits. Field problems in rice cultivation could broadly be divided into 3 major categories viz. insect pests, weeds, and plant diseases. Identification and management of problems related to insect pests and weeds are being presented in separate articles. This article will focus on accurate diagnosis of rice disease related problems in the field and approaches for their appropriate management.'
                      '\n\nDuring the last 30 years major changes have occurred in the varietal composition of and cultural practices for rice in Sri Lanka. Prior to 1970, hundreds of tall traditional cultivars were planted into 0.72 M ha of rice extent in Sri Lanka. However, beginning 1970, new improved varieties (NIV) of rice were introduced and at present 80% of rice extent is cultivated to about 10 NIVs. This indicates the reduced genetic variability of rice crop. New improved varieties are characterized by early maturity, photoperiod insensitivity, short stature, high tillering and dark- green leaves.'
                      '\n\nIntroduction of NIVs compelled farmers to use improved cultural practices such as better water & weed control, application of higher rates of fertilizer, and establishment of higher plant populations per unit area. The development of major irrigation facilities such as Mahaweli, and availability of early maturing, photoperiod - insensitive varieties have enabled the farmers in Sri Lanka to grow successive rice crops throughout the year in large extents. Reduced genetic variability (comprising few NIVs), improved cultural practices and continuous cropping with rice helped to increase the rice production in the country, however, the same factors increased the genetic vulnerability of the rice crop to diseases and insect pests.'
                      '\n\nEach season the rice crops in farmer fields are affected by many plant disease problems. Effects of plant diseases on rice crop productivity often varies depending on inherent capacity of the variety to withstand the disease condition in question, environmental factors, stage of crop growth, level of soil fertility management and indirect and harmful effects of agrochemicals such as herbicides and other pesticides. Plant disease problems can be grouped into two major areas; plant disorders and plant diseases for the convenience of discussion. A plant disorder is a state of disruption of the normal healthy status of the plant or plant parts caused by external factors such as soil problems (iron toxicity, saline soil, acid sulfate soil, deficiencies of nitrogen, phosphorous, potassium, and zinc), environmental stresses (water stresses, cold temperature) or other physical effects (wind damage, insect damage). Symptoms of plant disorders cannot be transferred from an affected plant to a healthy plant. A plant disease on the other hand is defined as an impairment of the normal physiological functioning of a plant or plant part caused by disease causing agents such as fungi, bacteria, viruses or nematodes. Plant diseases can be spread from an infected plant into a healthy plant.'
                      '\n\nThe symptoms of many rice plant disorders, diseases and insect pest attacks have been very clearly described and recorded individually. However, in field situations these diseases, disorders or pest attacks do not always occur in isolation, but rather as mixed occurrences. Therefore, identification of the primary cause of the field problem in question is of vital importance in providing an effective and efficient management/control measures. To establish an accurate diagnosis of a field problem, adoption of three logical steps as indicated below are very helpful. They are; (a) investigation and collection of previous and current season management practices (field history), (b) observation of field symptoms for any pattern of occurrence and (c) close examination of affected individual plants on whole plant basis in comparison to healthy plants from the same fields. These steps would provide some very useful clues as to what factor/s may be involved with the present field problem leading to accurate diagnosis of causal factors.'
                    ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.left,),

                  SizedBox(height: 5,),
                  Text('\nField History', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),

                  Text('\nField history is a crucial consideration in making a proper diagnosis. We learn from the past, so it becomes imperative to know last year’s crop and variety, rate and kind of fertilizers used, pesticide applied, and tillage programs. Rice crops planted on fields with vegetable crops in the previous season are liable to get more diseases such as blast, sheath blight and bacterial leaf blight due to luxurious plant growth caused by higher level of residual plant nutrients. Other factors that could play a role in our present diagnosis are last year’s growing conditions and occurrence and distribution of similar field problems or unrelated symptoms, if any. Are the affected plants confined to a specific area of ill drained or well drained portion of the field? These historical information would suggest if the field problem concerned is a new occurrence or a reappearance of seasonal occurrence. Then the next step is to focus on this year’s management procedures and the present field problem to see if common crop and soil fertility management practices have been attended to.'
                      ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.left,),

                  SizedBox(height: 5,),
                  Text('\nField Symptoms and Patterns', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),

                  Text('\nDistribution of affected plants in a field is studied to understand if the problem is developing a pattern. Are the disorders associated with particular parts of the field such as headlands, well drained or low-lying areas, or border rows? Border plants showing normal healthy appearance, while, center plants showing yellowing and poor growth could be due to lack of sufficient plant nutrients. The crop growth stage may provide possible causes of the present problem as some pest and diseases are crop growth stage specific. Are single plants affected, groups of plants, or are large areas of the field showing uniform symptoms? The problem may be related to environmental conditions such as low or high temperature, water availability, related to field practices such as herbicide or pesticide application, biological, or a combination of above factors. A stunted plant may be an indication of poor root growth as a result of compacted shallow plough pan, root rot, root injury from nematode feeding, or a nutrient deficiency. Discoloration, missing plants, or a stunting of plants in pockets could indicate a high population of nematodes, root rots, or specific soil related problem. Once the field has been sufficiently scouted and analyzed, the affected plants should be examined on whole plant basis in relation to healthy plants from same fields so that useful clues may be found.'
                      '\nSymptoms of affected plants hold the key to an accurate diagnosis of the field problem in question. Symptoms and signs of already recorded rice diseases have been very well described and recorded, and therefore one should use such available literature in relation to present field problem in question. Careful examination should include looking for discoloration, abnormal growth, or wilting of the leaves, storm and insect injuries, lesions, galls or any abnormality on the stem that may result in a disruption in the flow of water or nutrients. Leaf symptoms are often a reflection of root abnormalities; therefore, plants should be carefully dug up and the soil removed from the roots. Without close observation of root system, herbicide injury could be confused with a root rot. Both potentially cause browning of leaves or seedling death. Roots should appear off-white with elongated, fibrous, lateral rootlets. Root diseases may be observed either as a brown discoloration of the root or lesions. Nematode feeding and herbicide injury may be confused and normally require a soil analysis to determine the cause of a stunted or stubby root system. An example is dinitro aniline carryover and nematode injury to corn. The symptoms of both causes are short, stubby roots. A rotted root system may be caused directly by a root rotting pathogen or indirectly as secondary rot of dead tissue initially killed by excessive moisture or phytotoxicity effects of residual herbicides. In plant disease diagnosis and recognition, it is best to take a holistic approach in your investigations. Look at all aspects of a fields history, observe the entire field for patterns, and finally examine the entire plant. Making a diagnosis from insufficient observations is a disservice to a client and yourself. Utilize your past training, the literature, and the opinions of others to their fullest. Alternatives exist for providing a proper diagnosis. Some plant diseases have symptoms that are relatively unique; thus a diagnosis can be based only on the symptom. In other instances, symptoms are not a clear reflection of a specific disease and a well-equipped laboratory becomes important in identifying the causal agent. Plant or soil samples can be removed from the affected field and submitted to a trained professional. These samples should include information on field history, field symptoms, and plant symptoms as you see them. The care taken in providing the needed information, removing the affected plant, and submitting a properly packaged sample will be repaid with a reliable diagnosis.'
                      ,
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.left,),

                  SizedBox(height: 5,),
                  Text('\nCommon Rice Diseases', style: TextStyle(
                    color: highlightFontColor,
                    fontSize: 16.0,
                  ),),
                  Text('\nRice diseases of economic importance that need careful attention for increased productivity in farmers fields are as follows.'
                      '\n\nDisease Causal organism:'
                      '\n\n\t1. Rice blast - Magnaporthe grisea'
                      '\n\n\t2. Rice sheath blight - Rhizoctonia solani'
                      '\n\n\t3. Brown spot - Cochiobolus miyabeanus'
                      '\n\n\t4. Grain spotting and pecky rice - many fungal species and bacteria'
                      '\n\n\t5. Narrow Brown Leaf spot - Cercospora janseana',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.left,),

                  Text('\nIt is projected that the demand for rice will increase at 1.1% per year and to meet the rice production should grow at the rate '
                      'of 2.9% per year. Increasing the cropping intensity and national average yield are the options available to achieve this '
                      'production targets.',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.left,),

                  SizedBox(height: 10,),

                  Text('The current cost of production of rough rice is Rs. 8.57 per kg. The cost of labor, farm power and tradable inputs constitutes '
                      '55%, 23% and 23% respectively. The labor cost has risen at a higher rate than other costs over the last few years',
                    style: TextStyle(
                      color: secondaryFontColor,
                      fontSize: 14.0,
                    ),textAlign: TextAlign.left,),

                  SizedBox(height: 10,),

                  Text('While the global demand for rice will increase at 1.95% the production will increase at 1.62% per annum making the tradable '
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
