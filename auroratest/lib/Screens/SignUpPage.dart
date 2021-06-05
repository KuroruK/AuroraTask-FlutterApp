import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpPage createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage>{
  final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final TextEditingController textControllerFN = TextEditingController();
  final TextEditingController textControllerLN = TextEditingController();
  final TextEditingController textControllerEM = TextEditingController();
  final TextEditingController textControllerPN = TextEditingController();
  final TextEditingController textControllerPW = TextEditingController();
  final TextEditingController textControllerCPW = TextEditingController();
  
  ErrorIcon _errorWidgetFN = new ErrorIcon(false);
  ErrorIcon _errorWidgetLN = new ErrorIcon(false);
  ErrorIcon _errorWidgetEM = new ErrorIcon(false);
  ErrorIcon _errorWidgetPN = new ErrorIcon(false);
  ErrorIcon _errorWidgetPW = new ErrorIcon(false);
  ErrorIcon _errorWidgetCPW = new ErrorIcon(false);

  set errorWidgetFN(ErrorIcon value) {
    setState(() {
      _errorWidgetFN = value;
    });
  }
  set errorWidgetLN(ErrorIcon value) {
    setState(() {
      _errorWidgetLN = value;
    });
  }
  set errorWidgetEM(ErrorIcon value) {
    setState(() {
      _errorWidgetEM = value;
    });
  }
  set errorWidgetPN(ErrorIcon value) {
    setState(() {
      _errorWidgetPN = value;
    });
  }
  set errorWidgetPW(ErrorIcon value) {
    setState(() {
      _errorWidgetPW = value;
    });
  }
  set errorWidgetCPW(ErrorIcon value) {
    setState(() {
      _errorWidgetCPW = value;
    });
  }
  bool isNumeric(String s) {
  if(s == null) {
    return false;
  }
  return double.parse(s, (e) => null) != null;
}

  @override
  Widget build(BuildContext context) {
    final submitButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.orange,
      child: MaterialButton(
        minWidth: 300,//MediaQuery.of(context).size.width,
        
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          if(textControllerFN.text.trim()=="")
            return;
          if(textControllerLN.text.trim()=="")
            return;
          if(textControllerEM.text.trim()=="")
            return;
          //if(textControllerPN.text.trim()=="")
            //return;
          if(textControllerPW.text.trim()=="")
            return;
          if(textControllerCPW.text.trim()=="")
            return;
          if(textControllerPW.text.trim()!=textControllerCPW.text.trim())
            return;
          Navigator.pop(
          context,
        );
            
        },
        child: Text("Submit",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final backButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      child: MaterialButton(
        padding: new EdgeInsets.fromLTRB(0,0,0,0),
        onPressed: () {
          Navigator.pop(
          context,
          );   
        },
        child: Icon(
          Icons.arrow_back,
        )
      )
    );

    
    return Scaffold(
      
      floatingActionButton: submitButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      
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
              color:Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Container(
                      width:40,
                      height:40,
                      child: backButton
                      ),
                    Text(""),
                    Text(
                      "Welcome to Aurora",
                      style : style.copyWith(color: Colors.white,fontSize:40.0,fontWeight: FontWeight.bold),
                      ),
                    Text(
                      "Let's start by getting your account set up",
                      style: style.copyWith(color: Colors.white,fontSize:16.0),
                      ),
                    Text(""),
                    Text(
                      "First Name*",
                      style:style.copyWith(fontSize:10,color: Colors.white)
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        onChanged: (text) {
                          // DEFINE YOUR RULES HERE
                          text==""
                              ? errorWidgetFN = new ErrorIcon(true)
                              : errorWidgetFN = new ErrorIcon(false);
                        },
                        controller: textControllerFN,
                        decoration: new InputDecoration(
                          suffixIcon:_errorWidgetFN,
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(15.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            fillColor: Colors.white70), 
                          )
                    ),
                    Text(""),
                    Text(
                      "Last Name*",
                      style:style.copyWith(fontSize:10,color: Colors.white)
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        onChanged: (text) {
                          // DEFINE YOUR RULES HERE
                          text==""
                              ? errorWidgetLN = new ErrorIcon(true)
                              : errorWidgetLN = new ErrorIcon(false);
                        },
                        controller: textControllerLN,
                        decoration: new InputDecoration(
                            suffixIcon:_errorWidgetLN,
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(15.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            fillColor: Colors.white70), 
                          )
                    ),
                    Text(""),
                    Text(
                      "E-mail*",
                      style:style.copyWith(fontSize:10,color: Colors.white)
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        onChanged: (text) {
                          // DEFINE YOUR RULES HERE
                          text==""
                              ? errorWidgetEM = new ErrorIcon(true)
                              : errorWidgetEM = new ErrorIcon(false);
                        },
                        controller: textControllerEM,
                        decoration: new InputDecoration(
                          suffixIcon: _errorWidgetEM,
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(15.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            fillColor: Colors.white70), 
                          )
                    ),
                    Text(""),
                    Text(
                      "Phone Number*",
                      style:style.copyWith(fontSize:10,color: Colors.white)
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        onChanged: (text) {
                          // DEFINE YOUR RULES HERE
                          (text=="")||(!isNumeric(text))
                              ? errorWidgetPN = new ErrorIcon(true)
                              : errorWidgetPN = new ErrorIcon(false);
                        },
                        controller: textControllerPN,
                        decoration: new InputDecoration(
                          suffixIcon: _errorWidgetPN,
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(15.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            fillColor: Colors.white70), 
                          )
                    ),
                    Text(""),
                    Text(
                      "Password*",
                      style:style.copyWith(fontSize:10,color: Colors.white)
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        onChanged: (text) {
                          // DEFINE YOUR RULES HERE
                          text==""
                              ? errorWidgetPW = new ErrorIcon(true)
                              : errorWidgetPW = new ErrorIcon(false);
                        },
                        controller: textControllerPW,
                        decoration: new InputDecoration(
                          suffixIcon: _errorWidgetPW,
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(15.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            fillColor: Colors.white70), 
                          )
                    ),
                    Text(""),
                    Text(
                      "Confirm Password*",
                      style:style.copyWith(fontSize:10,color: Colors.white)
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        onChanged: (text) {
                          // DEFINE YOUR RULES HERE
                          (text=="")||(text!=textControllerPW.text.trim())
                              ? errorWidgetCPW = new ErrorIcon(true)
                              : errorWidgetCPW = new ErrorIcon(false);
                        },
                        controller: textControllerCPW,
                        decoration: new InputDecoration(
                          suffixIcon: _errorWidgetCPW,
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(15.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            fillColor: Colors.white70), 
                          )
                    ),
                    ConstrainedBox(constraints: BoxConstraints.tightFor(width: 300, height: 50)),
                    

                  ],
                )
              )
            )
          )
        ),
      )


    );
  }

}



class ErrorIcon extends StatelessWidget {
  bool _isError;

  ErrorIcon(this._isError);

  bool get isError => _isError;

  @override
  Widget build(BuildContext context) {
    Widget out;

    debugPrint("Rebuilding ErrorWidget");
    isError
        ? out = new Icon(
            Icons.error,
            color: Color(Colors.red.value),
          )
        : out = new Icon(null);

    return out;
  }
}