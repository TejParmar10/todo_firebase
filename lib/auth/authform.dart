// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  bool isLoginPage=false;

  var _email='';
  final _formKey = GlobalKey<FormState>();
  var _password='';
  var _username='';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          
          children: [
          Container(
            child: Form(key:_formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(!isLoginPage)
                // Username
                TextFormField(
              keyboardType: TextInputType.emailAddress,
              key:ValueKey('username'),
              validator: (value){
                if(value!.isEmpty){
                  return 'Please enter a username';
                }
                return null;
              },
              onSaved: (value){
                _username=value!;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: new BorderSide(),
                ),
                labelText: 'Username',
                labelStyle: GoogleFonts.roboto(),
              ),
            ),
            SizedBox(height: 10,),
                 // EMail
                TextFormField(
              keyboardType: TextInputType.emailAddress,
              key:ValueKey('email'),
              validator: (value){
                if(value!.isEmpty || !value.contains('@')){
                  return 'Please enter a valid email address';
                }
                return null;
              },
              onSaved: (value){
                _email=value!;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: new BorderSide(),
                ),
                labelText: 'Email Address',
                labelStyle: GoogleFonts.roboto(),
              ),
            ),
            SizedBox(height: 10,),       
            // Password
                 TextFormField(
              keyboardType: TextInputType.emailAddress,
              key:ValueKey('password'),
              validator: (value){
                if(value!.isEmpty){
                  return 'Please enter a password';
                }
                return null;
              },
              onSaved: (value){
                _password=value!;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: new BorderSide(),
                ),
                labelText: 'Password',
                labelStyle: GoogleFonts.roboto(),
              ),
            ),
            SizedBox(height: 10,),
              SizedBox(width: 200,child: ElevatedButton(onPressed: (){},child:isLoginPage? Text('Login',style: GoogleFonts.roboto(),):Text('SignUp',style: GoogleFonts.roboto(),),)),      
            ],
            
            ),
            
            ),
          )
        ],),
      ),
    );
  }
}