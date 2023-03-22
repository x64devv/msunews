import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../ui/constants/size_config.dart';
import '../../ui/utilities/theme_data.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize!;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        leading: Container(),
        title: Text(
            "User Profile",
          style: TextStyle(
            fontSize: defaultSize * 2.4,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(defaultSize * 2),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: textColor,
                  ),
                  title: Text(
                    "Jian",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.normal,
                        fontSize: defaultSize * 2
                    ),
                  ),
                  subtitle: Text(
                    "First Name",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.normal,
                        fontSize: defaultSize * 1.2
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: (){
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("First Name"),
                              content: SizedBox(
                                height: defaultSize * 5,
                                width: defaultSize * 18,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Jian",
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: defaultSize * 2,
                                        vertical: defaultSize / 2
                                    ),
                                  ),
                                  style: TextStyle(
                                      fontSize: defaultSize * 1.8,
                                      color: textColor,
                                      fontWeight: FontWeight.normal
                                  ),
                                  keyboardType: TextInputType.text,
                                  textAlign: TextAlign.start,
                                  // controller: controller.name,
                                ),
                              ),
                              actions: [
                                TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: pinkClr,
                                      foregroundColor: Colors.white,
                                    ),
                                    onPressed: (){
                                    },
                                    child: Text("Save")
                                ),
                              ],
                            )
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: textColor,
                      )
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: textColor,
                  ),
                  title: Text(
                    "Yang",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.normal,
                        fontSize: defaultSize * 2
                    ),
                  ),
                  subtitle: Text(
                    "Last Name",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.normal,
                        fontSize: defaultSize * 1.2
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: (){

                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("Last Name"),
                              content: SizedBox(
                                height: defaultSize * 5,
                                width: defaultSize * 18,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Yang",
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: defaultSize * 2,
                                        vertical: defaultSize / 2
                                    ),
                                  ),
                                  style: TextStyle(
                                      fontSize: defaultSize * 1.8,
                                      color: textColor,
                                      fontWeight: FontWeight.normal
                                  ),
                                  keyboardType: TextInputType.text,
                                  textAlign: TextAlign.start,
                                  // controller: controller.surname,
                                ),
                              ),
                              actions: [
                                TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: pinkClr,
                                      foregroundColor: Colors.white,
                                    ),
                                    onPressed: (){
                                    },
                                    child: Text("Save")
                                ),
                              ],
                            )
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: textColor,
                      )
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: textColor,
                  ),
                  title: Text(
                    "jian@yang.dev",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.normal,
                        fontSize: defaultSize * 2
                    ),
                  ),
                  subtitle: Text(
                    "Email",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.normal,
                        fontSize: defaultSize * 1.2
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: (){

                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("Email"),
                              content: SizedBox(
                                height: defaultSize * 5,
                                width: defaultSize * 18,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "jian@yang.dev",
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: defaultSize * 2,
                                        vertical: defaultSize / 2
                                    ),
                                  ),
                                  style: TextStyle(
                                      fontSize: defaultSize * 1.8,
                                      color: textColor,
                                      fontWeight: FontWeight.normal
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  textAlign: TextAlign.start,
                                  // controller: controller.surname,
                                ),
                              ),
                              actions: [
                                TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: pinkClr,
                                      foregroundColor: Colors.white,
                                    ),
                                    onPressed: (){
                                    },
                                    child: Text("Save")
                                ),
                              ],
                            )
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: textColor,
                      )
                  ),
                ),
                Divider(),
                SizedBox(height: defaultSize * 2),
                TextButton(
                  onPressed: () async {
                  },
                  child: Text(
                    "Sign out",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: defaultSize * 2
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
