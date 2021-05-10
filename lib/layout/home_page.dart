import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  int selected = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 40),
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RotatedBox(
                            quarterTurns: 1,
                            child: Icon(Icons.bar_chart_outlined)),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    Text(
                      "Hey, Faruk !",
                      style:
                          TextStyle(fontFamily: "Poppins", color: Colors.grey),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Let's Explore\nThe World",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Icon(
                            Icons.emoji_emotions,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TabBar(
                      controller: tabController,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      labelStyle: TextStyle(
                        fontFamily: "Poppins",
                      ),
                      onTap: (value) {
                        setState(() {
                          selected = value;
                        });
                      },
                      indicatorColor: Colors.transparent,
                      tabs: <Container>[
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: selected == 0 ? Colors.black : null,
                              borderRadius: BorderRadius.circular(20)),
                          child: Tab(
                            text: "Popular",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: selected == 1 ? Colors.black : null,
                              borderRadius: BorderRadius.circular(20)),
                          child: Tab(
                            text: "New",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: selected == 2 ? Colors.black : null,
                              borderRadius: BorderRadius.circular(20)),
                          child: Tab(
                            text: "Nearby",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: selected == 3 ? Colors.black : null,
                              borderRadius: BorderRadius.circular(20)),
                          child: Tab(
                            text: "Recomended",
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 300,
                      width: double.infinity,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          _tabbarItem(
                              "assets/images/1.jpeg", "assets/images/2.jpeg"),
                          _tabbarItem(
                              "assets/images/3.jpeg", "assets/images/4.jpeg"),
                          _tabbarItem(
                              "assets/images/2.jpeg", "assets/images/4.jpeg"),
                          _tabbarItem(
                              "assets/images/1.jpeg", "assets/images/3.jpeg"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Top Destinations",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: "Poppins",
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 90,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            height: 80,
                            width: 190,
                            decoration: BoxDecoration(
                                color: Colors.blue[50].withOpacity(.7),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/3.jpeg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Backwater",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Karala, India",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 11,
                                          fontFamily: "Poppins"),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star_rate,
                                          color: Colors.orange,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("4.9",
                                            style: TextStyle(
                                              color: Colors.grey[700],
                                              fontFamily: "Poppins",
                                            ))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            margin: EdgeInsets.only(left: 20),
                            height: 80,
                            width: 190,
                            decoration: BoxDecoration(
                                color: Colors.blue[50].withOpacity(.7),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/4.jpeg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Backwater",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Karala, India",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 11,
                                          fontFamily: "Poppins"),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star_rate,
                                          color: Colors.orange,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("4.9",
                                            style: TextStyle(
                                              color: Colors.grey[700],
                                              fontFamily: "Poppins",
                                            ))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 20,
              right: 20,
              child: Container(
                height: 70,
                padding: EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(
                            3,
                            3,
                          ),
                          blurRadius: 15)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _itemNavBottomBar(
                        Icons.home_filled, Colors.black, Colors.white),
                    _itemNavBottomBar(
                        Icons.search, Colors.transparent, Colors.grey),
                    _itemNavBottomBar(Icons.assistant_navigation,
                        Colors.transparent, Colors.grey),
                    _itemNavBottomBar(
                        Icons.favorite_border, Colors.transparent, Colors.grey)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _tabbarItem(String images, String images2) {
    return Container(
      height: 300,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(images), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.8),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nusa Penida Island",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontFamily: "Poppins",
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Bali, Indonesia",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Poppins",
                                fontSize: 13),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(images2), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.8),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nusa Penida Island",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontFamily: "Poppins",
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Bali, Indonesia",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Poppins",
                                fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _itemNavBottomBar(IconData icon, Color color, Color iconColor) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
