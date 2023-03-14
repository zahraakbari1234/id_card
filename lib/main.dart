import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
   home:  id_card(),
  ));
}
class id_card extends StatefulWidget {
  const id_card({Key? key}) : super(key: key);

  @override
  State<id_card> createState() => _id_cardState();
}

class _id_cardState extends State<id_card> {

  int age=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
    appBar: AppBar(
        title: Center(child: Text('My ID Card')),
        backgroundColor: Colors.grey[850],
      elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            age++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/butterfly.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              Text(
                  'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Zahra Akbari',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30),
              Text(
                'AGE',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '$age',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'zhra.akbari@gmail.com',
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


