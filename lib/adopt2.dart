import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'petData.dart';
import 'petCard.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class adopt2 extends StatefulWidget {
  final int i;
  adopt2({this.i});
  @override
  _adopt2State createState() => _adopt2State();
}

class _adopt2State extends State<adopt2> {
  final _firestore = FirebaseFirestore.instance;
  var data;
  var docref;

  Future<PetData> getData() async {
    docref = _firestore.collection("pets").doc(widget.i.toString());
    data = await docref.get();
    PetData petData = PetData(
      name: data['Name'],
      age: data['Age'],
      breed: data['Breed'],
      sex: data['Sex'],
      status: data['Status'],
    );
    return petData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          name[widget.i],
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            letterSpacing: 2.0,
            fontFamily: 'Lobster-Regular',
          ),
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/adopt.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text('Loading...'),
              ),
            );
          } else {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/adopt.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.i.toString(),
                    child: petCard(
                      name:
                          'Name: ${snapshot.data.name}\n Breed: ${snapshot.data.breed}\n Age: ${snapshot.data.age}\n Sex: ${snapshot.data.sex}\n Status: ${snapshot.data.status}',
                      imageUrl: url[widget.i],
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Material(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20.0),
                    child: MaterialButton(
                      minWidth: 150.0,
                      onPressed: () {
                        if (snapshot.data.status == 'Available') {
                          setState(() {
                            _firestore
                                .collection('pets')
                                .doc(widget.i.toString())
                                .update(
                              {
                                'Status': 'Adopted',
                              },
                            );
                          });
                          Alert(
                            context: context,
                            title: 'Thank You!',
                            desc:
                                'You can take ${snapshot.data.name} home tomorrow',
                          ).show();
                        } else {
                          Alert(
                            context: context,
                            title: 'Sorry!',
                            desc:
                                'Someone already adopted ${snapshot.data.name}. You can check other pets.',
                          ).show();
                        }
                      },
                      child: Text(
                        'Take Home',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        _firestore
                            .collection('pets')
                            .doc(widget.i.toString())
                            .update(
                          {
                            'Status': 'Available',
                          },
                        );
                      });
                    },
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
