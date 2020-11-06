import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_ui/Widgets/Best_seller_gridview.dart';
import 'package:furniture_shop_ui/Widgets/exploreslistview.dart';
import 'package:furniture_shop_ui/models/bestsellers.dart';
import 'package:furniture_shop_ui/models/explore.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Explore> explorelist = Explore.explore;
  List<BestSeller> bestseller = BestSeller.bestseller;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {},
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                "assets/purchase.svg",
                color: Colors.black,
                height: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                top: 5,
              ),
              child: Text(
                "Explore",
                style: TextStyle(
                  fontFamily: "cabin",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontSize: 27,
                ),
              ),
            ),
            ExploreSlider(),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Sellers",
                    style: TextStyle(
                      fontFamily: "cabin",
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.blue[200],
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BestSellerGrid(),
          ],
        ),
      ),
    );
  }
}
