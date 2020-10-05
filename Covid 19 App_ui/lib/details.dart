import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_list/cards.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black87,
        ),
        title: Text(
          'Symptoms & Testing',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.bell),
              color: Colors.black),
        ],
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right:15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                  //  SizedBox(
                  //   height: 10.0,
                  // ),
                  Stack(
                    children: [
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xFF003D64),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0.0, 10.0),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: FractionalOffset.centerLeft,
                        child: Image(
                          image: AssetImage('assets/images/interFace1.png'),
                          height: 200,
                          width: 150,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160.0, top: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Call your Doctor',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'If you think you have been exposed to Covid 19 ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Container(
                              height: 40.0,
                              width: 160.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Color(0xFF00578D),
                              ),
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Chat With Doctor',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                        alignment: PlaceholderAlignment.middle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Text('Symptoms', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    letterSpacing: 2.0
                  ),
                  ),
                   SizedBox(height: 25.0),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Cards(
                        img: 'assets/images/gloves.png', height: 100.0, width: 170.0,
                        title: 'Symptoms &',
                        subtitle: 'Preventions',
                           colour: Color(0xFF087cc7),
                      ),
                      Cards(
                         img: 'assets/images/kn95-mask.png', height: 60.0, width: 80.0,
                        title: 'Prevent',
                        subtitle: 'Getting Sick',
                        colour: Color(0xFFB3E0FF),
                      ),
                    ],
                  ),
                ),
                 SizedBox(height: 20.0,),
                  Text('Training Video', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    letterSpacing: 2.0
                  ),
                  ),
                       SizedBox(height: 10.0,),
                        Stack(
                    children: [
                      Container(
                        height: 150.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xFFFEE8DA),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black38,
                              offset: Offset(0.0, 10.0),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: FractionalOffset.centerLeft,
                        child: Image(
                          image: AssetImage('assets/images/interFace1.png'),
                          height: 140,
                          width: 120,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0, top: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Safety and Healthy Topics',
                              style: TextStyle(
                                color: Color(0xFFEC8537),
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'If you think you have been exposed to Covid 19. Watch the Video. ',
                              style: TextStyle(
                                color: Color(0xFFA59A92),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                          
                          ],
                        ),
                      ),
                    ],
                  ),
                     SizedBox(
                              height: 25.0,
                            ),
              
          ],
        ),
      ),
    );
  }
}
