import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ui/constants/size_config.dart';
import '../../../ui/utilities/theme_data.dart';

class SingleArticle extends StatefulWidget {
  const SingleArticle({Key? key}) : super(key: key);

  @override
  State<SingleArticle> createState() => _SingleArticleState();
}

class _SingleArticleState extends State<SingleArticle> {
  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize!;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_outlined
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.share
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: defaultSize * 2,
          right: defaultSize * 2,
          bottom: defaultSize * 2
        ),
        child: SingleChildScrollView(
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
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque debitis non minima vitae doloremque laborum quidem, expedita, maiores nesciunt esse dolore blanditiis, placeat sit culpa ipsum atque minus alias aperiam? Vero incidunt veritatis animi harum ipsa reprehenderit quas consequatur, accusantium veniam natus dignissimos modi, sint rerum rem ducimus minus nulla!",
                style: TextStyle(
                    color: textColor,
                    fontSize: defaultSize * 1.4
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
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque debitis non minima vitae doloremque laborum quidem, expedita, maiores nesciunt esse dolore blanditiis, placeat sit culpa ipsum atque minus alias aperiam? Vero incidunt veritatis animi harum ipsa reprehenderit quas consequatur, accusantium veniam natus dignissimos modi, sint rerum rem ducimus minus nulla!",
                style: TextStyle(
                    color: textColor,
                    fontSize: defaultSize * 1.4
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
    );
  }
}
