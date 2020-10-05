import 'package:flutter/material.dart';
import 'package:todo_list/details.dart';


class Cards extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  final Color colour;
  final double height;
  final double width;

  const Cards(
      {Key key,
      this.img,
      this.title,
      this.subtitle,
      this.colour,
      this.height,
      this.width}
      );

  @override
  Widget build(BuildContext context) {
  
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => DetailsScreen()
         
        ),
        );
      },
      
          child: Stack(
        children: [
          Container(
            height: 150.0,
            width: 160.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: colour,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: colour,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0),
              ],
            ),
          ),
          Container(
            alignment: FractionalOffset.topCenter,
            child: Image(
              image: AssetImage(img),
              height: 100.0,
              width: 140.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  child: Text(
                   subtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
