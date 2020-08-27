import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  @override
  Widget build(BuildContext context) {
    int ninjaLevel = 0;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel += 1;
              print(ninjaLevel);
            });
          },
          child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/0023230_yellow-kids-lace-up-martin-boot-small-size_500.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 70.0,
              color: Colors.grey[800],
            ),
            SizedBox(height: 5.0,),
            Center(
              child: Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Center(
              child: Text(
                'Noble',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Center(
              child: Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Center(
              child: Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                    Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text('noble.amanfo@aun.edu.ng',
                style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 1.0,
                 fontSize: 18,
                ),
                ),
              ],
            ),
            Divider(
              height: 70.0,
              color: Colors.grey[800],
            ),
          ],
        ),
      ),
    );
  }
}

