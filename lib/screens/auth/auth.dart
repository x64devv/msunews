import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:jin_jin/ui/utilities/routes.dart';

import '../../ui/constants/size_config.dart';
import '../../ui/utilities/theme_data.dart';
import '../../ui/widgets/pry_btn.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  var userType, ip;
  bool signup = false;
  String? usertype;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double? defaultSize = SizeConfig.defaultSize!;
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: authMode(),
          )
        ),
      ),
    );
  }

  authMode(){
    double? defaultSize = SizeConfig.defaultSize!;
    if(!signup){
      return Column(
        children: [
          SizedBox(height: defaultSize * 2,),
          Center(
            child: Text(
              "New New France24",
              style: TextStyle(
                  color: textColor,
                  fontSize: defaultSize * 3,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: defaultSize * 2,),
          Text(
            "Sign in to continue",
            style: TextStyle(
                color: textColor,
                fontSize: defaultSize * 2,
                fontWeight: FontWeight.normal
            ),
          ),
          SizedBox(height: defaultSize * 4,),
          SizedBox(height: defaultSize * 2,),
          TextFormField(
            // controller: controller.emailController,
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                    fontSize: 16,
                    color: textColor
                )
            ),
          ),
          SizedBox(height: defaultSize * 2,),
          TextFormField(
            // controller: controller.pwdController,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                    fontSize: 16,
                    color: textColor
                )
            ),
          ),
          SizedBox(height: defaultSize * 2,),
          Row(
            children: [
              Text(
                "Not yet registered?",
                style: TextStyle(
                    color: textColor,
                    fontSize: defaultSize * 1.6,
                    fontWeight: FontWeight.normal
                ),
              ),
              TextButton(
                onPressed: (){
                  // Get.offAndToNamed(GetRoutes.sign_up);
                  setState(() => signup = !signup);
                },
                child: Text(
                  "Signup.",
                  style: TextStyle(
                      color: bluishClr,
                      fontSize: defaultSize * 1.6,
                      fontWeight: FontWeight.normal
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          PrimaryButton(
              label: "Sign In",
              onPressed: (){
                // controller.checkSignIn();
                Get.toNamed(GetRoutes.dashboard);
              },
              icon: Icons.check
          )
        ],
      );
    } else{
      return Column(
        children: [
          SizedBox(height: defaultSize * 2,),
          Center(
            child: Text(
              "New New France24",
              style: TextStyle(
                  color: textColor,
                  fontSize: defaultSize * 3,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: defaultSize * 2,),
          Text(
            "Sign up to continue",
            style: TextStyle(
                color: textColor,
                fontSize: defaultSize * 2,
                fontWeight: FontWeight.normal
            ),
          ),
          SizedBox(height: defaultSize * 4,),
          SizedBox(height: defaultSize * 2,),
          TextFormField(
            // controller: controller.emailController,
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: "Name",
                hintStyle: TextStyle(
                    fontSize: 16,
                    color: textColor
                )
            ),
          ),
          SizedBox(height: defaultSize * 2,),
          TextFormField(
            // controller: controller.emailController,
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                    fontSize: 16,
                    color: textColor
                )
            ),
          ),
          SizedBox(height: defaultSize * 2,),
          TextFormField(
            // controller: controller.pwdController,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                    fontSize: 16,
                    color: textColor
                )
            ),
          ),
          SizedBox(height: defaultSize * 2,),
          TextFormField(
            // controller: controller.pwdController,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "Confirm password",
                hintStyle: TextStyle(
                    fontSize: 16,
                    color: textColor
                )
            ),
          ),
          SizedBox(height: defaultSize * 2,),
          Text(
            "Sign up as:",
            style: TextStyle(
              fontSize: defaultSize * 1.6
            ),
          ),
          SizedBox(height: defaultSize * 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: defaultSize * 17,
                child: RadioListTile(
                  title: Text("Reader"),
                  value: "reader",
                  groupValue: userType,
                  onChanged: (value){
                    setState(() {
                      userType = value.toString();
                    });
                  },
                ),
              ),
              Container(
                width: defaultSize * 17,
                child: RadioListTile(
                  title: Text("Reporter"),
                  value: "reporter",
                  groupValue: userType,
                  onChanged: (value){
                    setState(() {
                      userType = value.toString();
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: defaultSize * 2,),
          Row(
            children: [
              Text(
                "Already registered?",
                style: TextStyle(
                    color: textColor,
                    fontSize: defaultSize * 1.6,
                    fontWeight: FontWeight.normal
                ),
              ),
              TextButton(
                onPressed: (){
                  // Get.offAndToNamed(GetRoutes.sign_up);
                  setState(() => signup = !signup);
                },
                child: Text(
                  "Signin.",
                  style: TextStyle(
                      color: bluishClr,
                      fontSize: defaultSize * 1.6,
                      fontWeight: FontWeight.normal
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          PrimaryButton(
              label: "Sign Up",
              onPressed: (){
                // controller.checkSignIn();
                Get.toNamed(GetRoutes.dashboard);
              },
              icon: Icons.check
          )
        ],
      );
    }
  }

  Future getISP() async{
    var response = await http.get(Uri.parse("https://api.ipify.org/"));
    ip = response.body;
    print(ip);
  }

  Future getLocation() async{
    var response = await http.get(Uri.parse("http://ip-api.com/json/$ip"));
    var jsonparse = json.decode(response.body);
    print(jsonparse);
  }

  getDirectLocation() async{
    await getISP();
    getLocation();
    // Process the data next and get the actual required location
  }
}
