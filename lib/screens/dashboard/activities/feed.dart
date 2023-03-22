import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jin_jin/ui/utilities/theme_data.dart';

import '../../../ui/constants/size_config.dart';
import '../../../ui/utilities/routes.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize!;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: defaultSize * 2,
            left: defaultSize * 2,
            right: defaultSize * 2
          ),
          child: Column(
            children: [
              Container(
                width: defaultSize * double.infinity,
                height: defaultSize * 5,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.only(
                            top: defaultSize,
                            bottom: defaultSize,
                            left: defaultSize * 2,
                            right: defaultSize * 2
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45.withOpacity(0.01),
                                    offset: const Offset(0, 3),
                                    blurRadius: 20
                                ),
                              ]

                          ),
                          child: Text(
                            "All"
                          ),
                        ),
                      ),
                      SizedBox(width: defaultSize,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.only(
                              top: defaultSize,
                              bottom: defaultSize,
                              left: defaultSize * 2,
                              right: defaultSize * 2
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45.withOpacity(0.01),
                                    offset: const Offset(0, 3),
                                    blurRadius: 20
                                ),
                              ]

                          ),
                          child: Text(
                              "Trending"
                          ),
                        ),
                      ),
                      SizedBox(width: defaultSize,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.only(
                              top: defaultSize,
                              bottom: defaultSize,
                              left: defaultSize * 2,
                              right: defaultSize * 2
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45.withOpacity(0.01),
                                    offset: const Offset(0, 3),
                                    blurRadius: 20
                                ),
                              ]

                          ),
                          child: Text(
                              "Fashion"
                          ),
                        ),
                      ),
                      SizedBox(width: defaultSize,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.only(
                              top: defaultSize,
                              bottom: defaultSize,
                              left: defaultSize * 2,
                              right: defaultSize * 2
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45.withOpacity(0.01),
                                    offset: const Offset(0, 3),
                                    blurRadius: 20
                                ),
                              ]

                          ),
                          child: Text(
                              "Sport"
                          ),
                        ),
                      ),
                      SizedBox(width: defaultSize,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.only(
                              top: defaultSize,
                              bottom: defaultSize,
                              left: defaultSize * 2,
                              right: defaultSize * 2
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45.withOpacity(0.01),
                                    offset: const Offset(0, 3),
                                    blurRadius: 20
                                ),
                              ]

                          ),
                          child: Text(
                              "Academics"
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: defaultSize * 2,),
              Container(
                width: defaultSize * double.infinity,
                height: defaultSize * 69,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(GetRoutes.single_article);
                        },
                        child: Container(
                          width: defaultSize * double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                  "assets/images/wp3324196-wallpapers-of-ironman.jpg",
                                  width: defaultSize * double.infinity,
                                  height: defaultSize * 25,
                                  fit: BoxFit.cover
                              ),
                              SizedBox(height: defaultSize * 2,),
                              Text(
                                "Headline goes here.",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: defaultSize * 2,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: defaultSize,),
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Author name/surname",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: defaultSize * 1.6,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    VerticalDivider(
                                      color: textColor.withOpacity(0.1),
                                    ),
                                    Text(
                                      "21/03/2023",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: defaultSize * 1.6,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    VerticalDivider(
                                      color: textColor.withOpacity(0.1),
                                    ),
                                    Text(
                                      "08.00am",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: defaultSize * 1.6,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: defaultSize * 2,),
                              Text(
                                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque debitis non minima vitae doloremque laborum quidem, expedita, maiores nesciunt esse dolore blanditiis, placeat sit culpa ipsum atque minus alias aperiam? Vero incidunt veritatis animi harum ipsa reprehenderit quas consequatur, accusantium veniam natus dignissimos modi, sint rerum rem ducimus minus nulla!",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: defaultSize * 1.4
                                ),
                              ),
                              SizedBox(height: defaultSize * 2,),
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      SizedBox(height: defaultSize * 2,),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(GetRoutes.single_article);
                        },
                        child: Container(
                          width: defaultSize * double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                  "assets/images/wp3324196-wallpapers-of-ironman.jpg",
                                  width: defaultSize * double.infinity,
                                  height: defaultSize * 25,
                                  fit: BoxFit.cover
                              ),
                              SizedBox(height: defaultSize * 2,),
                              Text(
                                "Headline goes here.",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: defaultSize * 2,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: defaultSize,),
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Author name/surname",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: defaultSize * 1.6,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    VerticalDivider(
                                      color: textColor.withOpacity(0.1),
                                    ),
                                    Text(
                                      "21/03/2023",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: defaultSize * 1.6,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    VerticalDivider(
                                      color: textColor.withOpacity(0.1),
                                    ),
                                    Text(
                                      "08.00am",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: defaultSize * 1.6,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: defaultSize * 2,),
                              Text(
                                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque debitis non minima vitae doloremque laborum quidem, expedita, maiores nesciunt esse dolore blanditiis, placeat sit culpa ipsum atque minus alias aperiam? Vero incidunt veritatis animi harum ipsa reprehenderit quas consequatur, accusantium veniam natus dignissimos modi, sint rerum rem ducimus minus nulla!",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: defaultSize * 1.4
                                ),
                              ),
                              SizedBox(height: defaultSize * 2,),
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      SizedBox(height: defaultSize * 2,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
