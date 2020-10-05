import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.black,
        ),
        title: Text('Top quality', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Colors.grey,
        ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                height: 250.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 230.0,
                              width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/Beef Suya.jpg'),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Positioned(
                              left: 15.0,
                              top:130.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Beef Suya',
                                   style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'NunitoSans',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                                  ),
                                  Text('\₦1000',
                                   style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'NunitoSans',
                                    fontSize: 20.0,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 5.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Material(
                          borderRadius: BorderRadius.circular(7.0),
                          elevation: 2.0,
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.favorite, color: Colors.red),
                                Text(
                                  '400',
                                    style: TextStyle(
                                    fontFamily: 'NunitoSans',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Material(
                        borderRadius: BorderRadius.circular(7.0),
                        elevation: 2.0,
                        child: Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.chat_bubble,
                                  color: Colors.grey.withOpacity(0.5)),
                              Text(
                                '250',
                                style: TextStyle(
                                    fontFamily: 'NunitoSans',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(7.0),
                        elevation: 2.0,
                        child: Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.arrow_forward, color: Colors.grey),
                              Text(
                                '22',
                                style: TextStyle(
                                    fontFamily: 'NunitoSans',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Text(
                'Top Naija Foods',
                style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15.0),
            GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.85,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              children: <Widget>[
                _buildFoodCard('Abacha and Ugba', 'Amaka Store', 'assets/images/Abacha and Ugba - African Salad.jpg', 100, 40, 1),
                _buildFoodCard('Abacha', 'Amaka Store', 'assets/images/Abacha Recipe (African_ Nigerian Salad).jpg', 80, 55, 2),
                _buildFoodCard('Ewa Agoyin', 'Iya Aminat', 'assets/images/Agoyin Sauce_ Yoruba Pepper stew for beans & Ewa Agoyin.jpg', 70, 30, 3),
                _buildFoodCard('Amala and Ewedu', 'University of Amala', 'assets/images/AMALA AND EWEDU RECIPE.jpg', 345, 220, 4),
                _buildFoodCard('Beef Suya', 'Aboki School', 'assets/images/Beef Suya.jpg', 350, 210, 5),
                _buildFoodCard('Chicken Suya', 'Blenco', 'assets/images/Chicken Suya Recipe (Nigerian Suya) - My Active Kitchen.png', 500, 200, 6),
              ],
            ),
            SizedBox(height: 10.0)
            ],
          )
        ],
      )
    );
  }

  Widget _buildFoodCard(
    String name, String origin, String cardImage, int likes, int commentCount, int cardIndex
  ) {
    return Padding(
      padding: cardIndex.isEven? EdgeInsets.only(right: 15.0): EdgeInsets.only(left: 15.0),
      child: Container(
        height: 400.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
            style: BorderStyle.solid,
            width: 1.0
          )
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)
                    ),
                    image: DecorationImage(
                      image: AssetImage(cardImage),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0,top: 5.0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    origin,
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 12.0,
                      color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(height: 3.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0,top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        likes.toString(),
                        style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 12.0,
                      color: Colors.grey
                    ),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey.withOpacity(0.4),
                        
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        commentCount.toString(),
                        style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 12.0,
                      color: Colors.grey
                    ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 110.0,
              top: 102.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.amber
                ),
                child: Center(
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
