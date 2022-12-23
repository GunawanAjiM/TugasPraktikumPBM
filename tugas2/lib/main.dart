import 'package:flutter/material.dart';

void main(){
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: "Gunawan Aji M",
      theme: ThemeData.dark(),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

double counter = 12.0;
bool IsVisible = true;
String IsName = "Gunawan Aji M";

void _CounterPlus(){
  setState((){
     counter++;
  });
}

void _CounterMinus(){
  setState((){
     counter--;
  });
}

void _Visible(){
  setState(() {
  IsVisible = !IsVisible;
  if(IsVisible){
    IsName = "Gunawan Aji M";
  }else{
    IsName = "2010631170144";
  }
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation:10,
        backgroundColor: Color.fromARGB(255, 28, 27, 27),
        title: Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              FlutterLogo(),
              Text("Tugas 2 PBM",
              style: TextStyle(
                textBaseline: TextBaseline.alphabetic,
                shadows:[Shadow(
                offset: Offset(1,0),
                blurRadius: 2.0,
                color: Color.fromARGB(255, 41, 41, 41),
              )] ),),
            ],
          ),
        ),
      ),
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 28, 27, 27),
            Color.fromARGB(255, 15, 15, 15),
            
          ],

          stops: [
            0.2,
            0.6,
          ],
          begin: Alignment.topLeft  ,
          end: Alignment.bottomLeft,
          )),
      child: (
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(),
                Text("$IsName",textAlign: TextAlign.center,style: TextStyle(fontSize: counter,shadows: [Shadow(
                  offset: Offset(0,2),
                  blurRadius: 5.0,
                  color: Color.fromARGB(255, 44, 44, 44),
                )]),),
                Text("Ukuran Font $counter",textAlign: TextAlign.center,style: TextStyle(shadows: [Shadow(
                  offset: Offset(0,1),
                  blurRadius: 1.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                )],fontSize: 18,fontWeight: FontWeight.bold),),
                IconButton(
              onPressed: _Visible,tooltip: 'increment',icon: Icon(Icons.remove_red_eye_outlined),
            ),
              ],
            ))
      ),
    ),
    floatingActionButton: 
    Container(
      margin: const EdgeInsets.only(left: 30,bottom: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                    color: Color.fromARGB(255, 14, 13, 13),                  
                    offset: Offset(0,5),
                    blurRadius: 12,
                    spreadRadius:-4,
                  )
                ],
                borderRadius: BorderRadius.circular(18.0)),
              child: ElevatedButton(
                  onPressed: _CounterMinus,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                    backgroundColor: Color.fromARGB(255, 36, 36, 36),
                  ),
                   child: Row(
                    children: [
                      Text("Font Size",style: TextStyle(fontFamily: "Netflix"),),
                      Icon(Icons.remove),
                    ],
                  ),
                  ),
            ),
          ),
            Container(
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                    color: Color.fromARGB(255, 14, 13, 13),                  
                    offset: Offset(0,5),
                    blurRadius: 12,
                    spreadRadius:-4,
                  )
                ],
                borderRadius: BorderRadius.circular(18.0)),
              child: ElevatedButton(
                onPressed: _CounterPlus,
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                    backgroundColor: Color.fromARGB(255, 36, 36, 36),
                ),
                 child: Row(
                  children: [
                    Text("Font Size",style: TextStyle(fontFamily: "Netflix"),),
                    Icon(Icons.add),
                  ],
                ),
                ),
            ),
        ],
        ),
    ),
    );
  }
}
