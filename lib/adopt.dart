import 'package:flutter/material.dart';
import 'package:pat_a_pet/adopt2.dart';
import 'petCard.dart';
import 'constants.dart';

class adopt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Take a pet home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            letterSpacing: 2.0,
            fontFamily: 'Lobster-Regular',
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/adopt.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => adopt2(
                        i: index,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: index.toString(),
                  child: petCard(
                    name: name[index],
                    imageUrl: url[index],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
