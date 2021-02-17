import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
          ),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              // color: Colors.white,
            ),
            child: Text(
              'Edit profile',
              style: TextStyle(
                color: Colors.green[300],
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.blue[100],
          //   ),
          //   child: Text(
          //     'Edit Profile',
          //     style: TextStyle(
          //       color: Colors.green[300],
          //       fontSize: 32,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          
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
                  // key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        //email
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Change Email'),
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
                            // _authData['email'] = value;
                          },
                        ),

                        //password
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Change Password'),
                          obscureText: true,
                          // controller: _passwordController,
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
                            // _authData['password'] = value;
                          },
                        ),

                        //confirmPassword
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Confirm New Password'),
                          obscureText: true,
                          validator: (value)
                          {
                            // if(value.isEmpty || value != _passwordController.text)
                            // {
                            //   return 'invalid password';
                            // }
                            // return null;
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
                            'Change Password'
                          ),
                          onPressed: ()
                          {
                            // _submit();
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
      );
    // return Column(
    //   mainAxisSize: MainAxisSize.min,
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: 
    //           Container(
    //             height: 72.0,
    //             width: 72.0,
    //             decoration: BoxDecoration(
    //               shape: BoxShape.circle,
    //               image: DecorationImage(
    //                 image: AssetImage('images/baseline_account_circle_black_18dp.png'),
    //                 fit: BoxFit.contain,
    //               )
    //             ),
    //           ),
    //         ),
    //         Column(
    //           mainAxisSize: MainAxisSize.min,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               'Super Hero',
    //               style: Theme.of(context).textTheme.headline5,
    //             ),
    //             Text(
    //               'super_hero@nyp.edu.sg',
    //               style: Theme.of(context).textTheme.headline6,
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //     SizedBox(height: 28),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Text(
    //           '(65) 1234 5678',
    //           style: Theme.of(context).textTheme.subtitle1,
    //         ),
    //       ],
    //     ),
    //   ],
    // ); 
  }
}