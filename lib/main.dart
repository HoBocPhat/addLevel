import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaIdCard(),
  ));
}

class NinjaIdCard extends StatefulWidget {
  const NinjaIdCard({Key? key}) : super(key: key);

  @override
  State<NinjaIdCard> createState() => _NinjaIdCardState();
}

class _NinjaIdCardState extends State<NinjaIdCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/ke-tui.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.blueGrey[700],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.blueGrey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Vy-Ngo",
              style: TextStyle(
                  color: Colors.amber[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "CURRENT LEVEL",
              style: TextStyle(
                  color: Colors.blueGrey,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "$ninjaLevel",
              style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.blueGrey[200],
                ),
                SizedBox(width: 10.0,),
                Text(
                  "vy-ngo@gmail.com",
                  style: TextStyle(
                    color: Colors.blueGrey[200],
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}



