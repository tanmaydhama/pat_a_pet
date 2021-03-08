import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'PatAPet',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              letterSpacing: 2.0,
              fontFamily: 'Lobster-Regular',
            ),
          ),
          backgroundColor: Colors.black,
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
          ),
          child: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.black87),
                  child: Center(
                    child: Text(
                      'Pat A Pet!',
                      style: TextStyle(
                        fontSize: 32.0,
                        color: Colors.white,
                        fontFamily: 'Lobster-Regular',
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.dog,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Adopt a Pet',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    print('Pressed');
                  },
                ),
                // Divider(
                //   color: Colors.white,
                // ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.addressBook,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Contact Us',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    print('Pressed');
                  },
                ),
                // Divider(
                //   color: Colors.white,
                // ),
              ],
            ),
          ),
        ),
        // appBar: AppBar(
        //   backgroundColor: Colors.brown.shade500,
        //   title: Text('Pat A Pet!'),
        // ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/home.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
              child: FadeAnimatedTextKit(
            repeatForever: true,
            text: [
              "Adopt\n\t\t\t\t Don't\n Shop",
            ],
            textStyle: TextStyle(
                fontSize: 50.0,
                color: Colors.white70,
                letterSpacing: 2.0,
                fontFamily: 'Bowlby'),
          )),
        ),
      ),
    );
  }
}
