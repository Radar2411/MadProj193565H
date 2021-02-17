import 'package:flutter/material.dart';
import 'package:m1_193565h_madproj1/home_screen.dart';
import 'package:m1_193565h_madproj1/models/authentication.dart';
import 'package:m1_193565h_madproj1/pages/login.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  static const routeName = '/register';
  @override
  _RegisterDemoState createState() => _RegisterDemoState();
}

class _RegisterDemoState extends State<Register> {

  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();

  Map<String, String> _authData = {
    'email' : '',
    'password' : ''
  };

  void _showErrorDialog(String msg)
  {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('An Error Occured'),
        content: Text(msg),
        actions: <Widget>[
          FlatButton(
            child: Text('Okay'),
            onPressed: (){
              Navigator.of(ctx).pop();
            },
          ),
        ],
      ),
    );
  }

  Future<void> _submit() async
  {
    {
      if(!_formKey.currentState.validate())
      {
        return;
      }
    }
    _formKey.currentState.save();

    try{
      await Provider.of<Authentication>(context, listen: false).signUp(
      _authData['email'], 
      _authData['password']
    );
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);

    } catch(error)
    {
      var errorMessage = 'Authentication Failed. Please try again later.';
      _showErrorDialog(errorMessage);
    }
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Register Page"),
        actions: <Widget>[
          FlatButton(
            child: Row(
              children: <Widget>[
                Text('Login'),
                Icon(Icons.person)
              ],
            ),
            textColor: Colors.white,
            onPressed: (){
              Navigator.of(context).pushReplacementNamed(Login.routeName);
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 300,
                width: 300,
                padding: EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        //email
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email'),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value)
                          {
                            if(value.isEmpty || !value.contains('@'))
                            {
                              return 'invalid email';
                            }
                            return null;
                          },
                          onSaved: (value)
                          {
                            _authData['email'] = value;
                          },
                        ),

                        //password
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                          controller: _passwordController,
                          validator: (value)
                          {
                            if(value.isEmpty || value.length<=5)
                            {
                              return 'invalid password';
                            }
                            return null;
                          },
                          onSaved: (value)
                          {
                            _authData['password'] = value;
                          },
                        ),

                        //confirmPassword
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Confirm Password'),
                          obscureText: true,
                          validator: (value)
                          {
                            if(value.isEmpty || value != _passwordController.text)
                            {
                              return 'invalid password';
                            }
                            return null;
                          },
                          onSaved: (value)
                          {

                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RaisedButton(
                          child: Text(
                            'Submit'
                          ),
                          onPressed: ()
                          {
                            _submit();
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[
      //       Padding(
      //         padding: const EdgeInsets.only(top: 60.0),
      //         child: Center(
      //           child: Container(
      //               width: 200,
      //               height: 150,
      //               /*decoration: BoxDecoration(
      //                   color: Colors.red,
      //                   borderRadius: BorderRadius.circular(50.0)),*/
      //               child: Text(
      //                 'FreshCare Recipes',
      //                 style: TextStyle(
      //                   color: Colors.green[300],
      //                   fontSize: 32,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //         ),
      //         ),
      //       ),
      //       Padding(
      //         //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      //         padding: EdgeInsets.symmetric(horizontal: 15),
      //         child: TextField(
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(),
      //               labelText: 'Name',
      //               hintText: 'Enter valid Name'),
      //         ),
      //       ),
      //       Padding(
      //         //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      //         padding: const EdgeInsets.only(
      //             left: 15.0, right: 15.0, top: 15, bottom: 0),
      //         child: TextField(
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(),
      //               labelText: 'Email',
      //               hintText: 'Enter valid email id as abc@gmail.com'),
      //           keyboardType: TextInputType.emailAddress,
      //         ),
              
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(
      //             left: 15.0, right: 15.0, top: 15, bottom: 0),
      //         //padding: EdgeInsets.symmetric(horizontal: 15),
      //         child: TextField(

      //           obscureText: true,
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(),
      //               labelText: 'Password',
      //               hintText: 'Enter secure password'),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(
      //             left: 15.0, right: 15.0, top: 15, bottom: 0),
      //         //padding: EdgeInsets.symmetric(horizontal: 15),
      //         child: TextField(

      //           obscureText: true,
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(),
      //               labelText: 'Confirm Password',
      //               hintText: 'Enter matching password'),
      //         ),
      //       ),
      //       FlatButton(
      //         onPressed: (){
      //       // ignore: todo
      //           //TODO FORGOT PASSWORD SCREEN GOES HERE
      //         },
      //         child: Text(
      //           ' ',
      //         ),
      //       ),
      //       Container(
      //         height: 50,
      //         width: 250,
      //         decoration: BoxDecoration(
      //             color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      //         child: FlatButton(
      //           onPressed: () {
      //             Navigator.push(
      //                 context, MaterialPageRoute(builder: (_) => Login()));
      //           },
      //           child: Text(
      //             'Login',
      //             style: TextStyle(color: Colors.white, fontSize: 25),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 130,
      //       ),
      //       FlatButton(
      //         onPressed: (){
      //           // ignore: todo
      //           //TODO FORGOT PASSWORD SCREEN GOES HERE
      //           Navigator.push(
      //                 context, MaterialPageRoute(builder: (_) => Login()));
      //         },
      //         child: Text(
      //           'Already have An Account? Log-in Here!',
      //           style: TextStyle(color: Colors.blue, fontSize: 15),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}