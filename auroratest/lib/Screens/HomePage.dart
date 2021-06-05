import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  
  @override
  Widget build(BuildContext context) {
    final logoutButton = Container(
      width: 50,
      child:Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.red,
        child: MaterialButton(
          padding: new EdgeInsets.fromLTRB(0,0,0,0),
          onPressed: () {
            Navigator.pop(
            context,
            );   
          },
          child: Icon(
            Icons.logout,
          )
        )
      )
    );

    return new Scaffold(
    
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      child: Column(
        children: [
          Text(""),
          Text(""),
          Row(
            children: [
              Container(
                
                child: Text(
                  " Home Screen             ",
                  style:style.copyWith(fontSize:30,color: Colors.white,fontWeight: FontWeight.bold)
                  ),
                ),
                logoutButton,
              ],
            ),
            Text(""),
            Text(
              "Sucessfully logged in!!!",
              style: style.copyWith(color: Colors.white),
            ),
            Text(""),
            SizedBox(
                  height: 250.0,
                  child: Image(
                    image: AssetImage("assets/image/meme.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),

        ],
      ),
        
      )

    );
  }



}