import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_ui/models/explore.dart';

class ExploreSlider extends StatelessWidget {
  List<Explore> explorelist = Explore.explore;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.30,
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        bottom: 10,
      ),
      child: ListView.builder(
        itemCount: explorelist.length,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: InkWell(
              splashColor: Colors.orange[200],
              onTap: () {},
              child: Container(
                
                // padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(
                        "assets/${explorelist[index].imgpath}",
                        height: size.height * 0.15,
                        width: size.width * 0.15,
                      ),
                    ),
                    Container(
                      //  alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(
                        top: 15,
                        left: 10,
                        bottom: 5,
                      ),
                      child: Text(
                        "${explorelist[index].name}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                           fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      //  alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        "${explorelist[index].count} Items",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
