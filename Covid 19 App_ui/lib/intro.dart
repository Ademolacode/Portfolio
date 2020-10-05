import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:todo_list/home_screen.dart';

class Introduction extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
      image: Image.asset('assets/images/interFace1.png'),
      title: 'Stay Safe',
      body: 'For More Information about how to stay safe, click next to know more',
      footer: Text('AdemolaCode')

    ),
      PageViewModel(
      image: Image.asset('assets/images/interFace3.png'),
      title: 'Stay Safe',
      body: 'For More Information on Covid 19 hacks, click next to know more',
      footer: Text('AdeCode')

    ),
      PageViewModel(
      image: Image.asset('assets/images/interFace4.png'),
      title: 'Stay Safe',
      body: 'In Order to get to the main screen, click skip or Done',
      footer: Text('AmolaCode')

    ),

    ] ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done: Text('Done', style: TextStyle(color: Colors.black, ),),
      
        pages: getPages(),
        globalBackgroundColor: Colors.white,
          onDone: () {
          //  Navigator.of(context).canPop(HomeScreen);
        },
  

        
      ) ,
      
    );
  }
}

