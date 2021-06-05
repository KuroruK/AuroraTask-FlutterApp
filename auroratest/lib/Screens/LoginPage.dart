import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'SignUpPage.dart';

class LogInPage extends StatefulWidget {
  LogInPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LogInPage createState() => _LogInPage();
}

class _LogInPage extends State<LogInPage> {
  final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  ErrorIcon _errorWidget = new ErrorIcon(false);
  set errorWidget(ErrorIcon value) {
    setState(() {
      _errorWidget = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    final emailField = Container(
      height:55,
      child:TextField(
        controller: emailController,
        decoration: new InputDecoration(
          suffixIcon: _errorWidget,
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(15.0),
              ),
            ),
            filled: true,
            hintStyle: new TextStyle(color: Colors.grey[800]),
            hintText: "E-mail",
            fillColor: Colors.white70), 
          )
        );

    final passwordField = Container(
        height: 55,
        child:TextField(
        controller: passwordController,
        decoration: new InputDecoration(
          suffixIcon: _errorWidget,
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(15.0),
              ),
            ),
            filled: true,
            hintStyle: new TextStyle(color: Colors.grey[800]),
            hintText: "Password",
            fillColor: Colors.white70), 
          )
        );
    
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.orange,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          String username=emailController.text.trim();
          String password=passwordController.text.trim();

          //print(username==password && username==password);
          if(username==("rr") && password=="pass"){
            Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()));
          errorWidget = new ErrorIcon(false);}  
          else if(username=="root" && password=="admin"){
            Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()));
          errorWidget = new ErrorIcon(false);}  
          else if(username=="user" && password=="1234"){
            Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()));
          errorWidget = new ErrorIcon(false);
          } 
          else
            errorWidget = new ErrorIcon(true);
          
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final signUpButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.transparent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUpPage()),
  );
            
        },
        child: Text("Register",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );


    return Scaffold(
      
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 150.0,
                        child: Image(
                          image: AssetImage("assets/image/asIcon.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        "LOGIN",
                        style: style.copyWith(color:Colors.white,fontFamily: 'Montserrat', fontSize: 25.0,fontWeight: FontWeight.bold),
                        ),
                      SizedBox(height: 20.0),
                      emailField,
                      SizedBox(height: 20.0),
                      passwordField,
                      SizedBox(height: 20.0),
                      SizedBox(
                        height:30,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontFamily: 'Montserrat', fontSize: 12.0),
                          ),
                          onPressed: null,
                          child: const Text('Forgot Password?'),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      loginButton,
                      SizedBox(
                        height: 15.0,
                      ),
                      signUpButton,
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );

  }
  
}
