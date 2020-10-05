import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_list/cards.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            title: Text('Covid 19 App UI'),
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
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Covid 19',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                      color: Colors.black87),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Virus Tracking',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: Colors.black87,
                    letterSpacing: 3.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
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
                      alignment: FractionalOffset.centerRight,
                      child: Image(
                        image: AssetImage('assets/images/interFace1.png'),
                        height: 200,
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What To Do',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'If you are Sick ?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Container(
                            height: 40.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Color(0xFF00578D),
                            ),
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'Learn More',
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
                SizedBox(height: 25.0),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Cards(
                        img: 'assets/images/gloves.png', height: 100.0, width: 170.0,
                        title: 'Symptoms &',
                        subtitle: 'Preventions',
                           colour: Color(0xFFE44E4F),
                      ),
                      Cards(
                         img: 'assets/images/kn95-mask.png', height: 100.0, width: 160.0,
                        title: 'Prevent',
                        subtitle: 'Getting Sick',
                        colour: Color(0xFF6674F1),
                      ),
                    ],
                  ),
                ),
                 Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Cards(
                        img: 'assets/images/pro-vac.png', height: 50.0, width: 170.0,
                        title: 'Pro-Vac Vento',
                        subtitle: '',
                          colour: Color(0xFF1A95B6),
                      ),
                      Cards(
                         img: 'assets/images/live-b1.png', height: 50.0, width: 170.0,
                        title: ' Live B1',
                        subtitle: '',
                            colour: Color(0xFFE67E49),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        );
      
  }
}