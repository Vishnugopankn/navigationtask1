import 'package:flutter/material.dart';
import 'package:navigationtask3/pic1.dart';

void main() {
  runApp(const SeaPage());
}

class SeaPage extends StatelessWidget {
  const SeaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const Sea(),);
  }
}



class Sea extends StatefulWidget {
  const Sea({Key? key}) : super(key: key);

  @override
  State<Sea> createState() => _SeaState();
}

class _SeaState extends State<Sea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: Center(child: Text("MARINE",style:TextStyle(fontFamily: 'Anton',fontSize: 50),)),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Pics(title:"Sea 1", image:"images/sea11.jpg")));

        },
                child: Container(height: 90,width: double.infinity,color: Colors.greenAccent,
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 60,backgroundImage: AssetImage("images/sea11.jpg"),
                      ),
                      SizedBox(width: 30,),
                      Text("Sea 1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black87),),
                    ],

                  ),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pics(title:"Sea 2", image:"images/sea 2.jpg")));

                },
                child: Container(height: 90,width: double.infinity,color: Colors.greenAccent,
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 60,backgroundImage: AssetImage("images/sea 2.jpg"),
                      ),
                      SizedBox(width: 30,),
                      Text("Sea 2",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black87),),
                    ],

                  ),
                ),
              ),

              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pics(title:"Sea 3", image:"images/sea3.jpg")));

                },
                child: Container(height: 90,width: double.infinity,color: Colors.greenAccent,
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 60,backgroundImage: AssetImage("images/sea3.jpg"),
                      ),
                      SizedBox(width: 30,),
                      Text("Sea 3",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black87),),
                    ],

                  ),
                ),
              )


            ],

          ),
        ),
    );
  }
}

