import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_ui/models/bestsellers.dart';

class BestSellerGrid extends StatelessWidget {
  List<BestSeller> bestseller = BestSeller.bestseller;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: 0.85,
      ),
      itemCount: bestseller.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: InkWell(
            splashColor: Colors.orange[200],
            onTap: () {},
            child: Container(
              //padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                //  color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          "assets/${bestseller[index].imgpath}",
                          height: size.height * 0.15,
                          width: size.width,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SvgPicture.asset(
                                bestseller[index].fav == true
                                    ? "assets/like.svg"
                                    : "assets/unlike.svg",
                                height: 22,
                                width: size.width,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    //  alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      bottom: 5,
                    ),
                    child: Text(
                      "${bestseller[index].name}",
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
                      "\$${bestseller[index].prize}",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
