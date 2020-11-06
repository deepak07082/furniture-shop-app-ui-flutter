import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop_ui/Widgets/Best_seller_gridview.dart';
import 'package:furniture_shop_ui/Widgets/exploreslistview.dart';
import 'package:furniture_shop_ui/screens/home.dart';

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
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
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Home(),
                        ),
                      );
                    },
                    child: Image.asset("assets/i3.jpg"),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.17,
                    left: MediaQuery.of(context).size.width * 0.10,
                    child: Text(
                      "Cyber Monday",
                      style: TextStyle(
                        letterSpacing: 1.1,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.20,
                    left: MediaQuery.of(context).size.width * 0.15,
                    child: Text(
                      "Sales up to\n70% Off",
                      style: TextStyle(
                        letterSpacing: 1.2,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                top: 0,
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
