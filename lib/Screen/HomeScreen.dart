import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nearme/Api_trigger/Api_helper.dart';
import 'package:nearme/Constant_widget/Con_wid.dart';
import 'package:nearme/Screen/Detail_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> drawerName = GlobalKey();
  PageController _controller = PageController();
  List places = [];
  List hotel = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectplaces();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerName,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            drawerName.currentState?.openDrawer();
          },
          child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Image.asset("Assets/Icon/menu.png")),
        ),
        title: Image.asset(
          'Assets/logo/Icon/nearme_logo.png',
          scale: 3,
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Image.asset("Assets/Icon/Search_Icon_tour.png"))
        ],
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(360),
                  child: Image.asset(
                    'Assets/profileImage/2289_SkVNQSBGQU1PIDEwMjgtMTE2 2.png',
                    fit: BoxFit.fill,
                  )),
              title: Con_wid.CommanText(
                  text: "Prince Hirpara",
                  fontweight: FontWeight.w900,
                  Size: 18),
              subtitle: Con_wid.CommanText(
                  text: "pdhirpara123@gmail.com",
                  fontweight: FontWeight.w400,
                  Size: 14),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5, right: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, 'trip');
                    },
                    splashColor: const Color(0x00e8f2fe),
                    child: ListTile(
                      titleTextStyle: const TextStyle(
                        color: Color(0xFF5D7285),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      title: const Text("List of Trip places"),
                      splashColor: const Color(0xFFE9F5FE),
                      leading: Image.asset("Assets/Icon/travel.png"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, 'customer');
                      },
                      splashColor: const Color(0x00e8f2fe),
                      child: ListTile(
                        titleTextStyle: const TextStyle(
                          color: Color(0xFF5D7285),
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        title: const Text("Customer Support"),
                        splashColor: const Color(0xFFE9F5FE),
                        leading:
                            Image.asset("Assets/Icon/customer-support.png"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, "privacy");
                    },
                    splashColor: const Color(0x00e8f2fe),
                    child: ListTile(
                      titleTextStyle: const TextStyle(
                        color: Color(0xFF5D7285),
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                      ),
                      title: const Text("Privacy and Policy"),
                      splashColor: const Color(0xFFE9F5FE),
                      leading: Image.asset("Assets/Icon/lock.png"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, 'terms');
                    },
                    splashColor: const Color(0x00e8f2fe),
                    child: ListTile(
                      titleTextStyle: const TextStyle(
                        color: Color(0xFF5D7285),
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                      ),
                      title: const Text("Terms and Conditions"),
                      splashColor: const Color(0xFFE9F5FE),
                      leading: Image.asset("Assets/Icon/newspaper-outline.png"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, 'setting');
                    },
                    splashColor: const Color(0x00e8f2fe),
                    child: ListTile(
                      titleTextStyle: const TextStyle(
                        color: Color(0xFF5D7285),
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                      ),
                      title: const Text("Setting"),
                      splashColor: const Color(0xFFE9F5FE),
                      leading: Image.asset("Assets/Icon/Setting .png"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(20),
                      shadowColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(54, 122, 255, 1),
                      ),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(29, 127, 214, 1),
                      ),
                    ),
                    onPressed: () async {},
                    child: Container(
                      alignment: Alignment.center,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.logout_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 213,
              child: PageView.builder(
                controller: _controller,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12, top: 10),
                    child: Container(
                      height: 213,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image:
                                  AssetImage("Assets/banner/city_banner4.png"),
                              fit: BoxFit.fill)),
                      width: double.infinity,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 7),
            Center(
              child: SmoothPageIndicator(
                  effect: WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 3,
                      type: WormType.thinUnderground,
                      activeDotColor: Color(0xff007AFF),
                      dotColor: Color(0xffDEDBDB)),
                  controller: _controller,
                  count: 5),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, top: 5),
              child: Con_wid.CommanText(
                  text: "Famous Places", Size: 20, fontweight: FontWeight.w700),
            ),
            SizedBox(height: 15),
            Container(
                height: 212,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detail_page(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Container(
                          height: 220,
                          width: 164,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'Assets/banner/city_banner4.png'),
                                        fit: BoxFit.fill)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Con_wid.CommanText(
                                    text: "laxmi vilas Place",
                                    fontweight: FontWeight.w500,
                                    Size: 16),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemSize: 20,
                                        itemCount: 5,
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 10,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      )),
                                  Con_wid.CommanText(text: "(4.5)", Size: 16)
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Con_wid.CommanText(
                                    text: "Open",
                                    fontweight: FontWeight.bold,
                                    Size: 15,
                                    color: Colors.green,
                                  ))
                            ],
                          ),
                        ),
                      )),
                )),
            Padding(
              padding: EdgeInsets.only(left: 8, top: 15),
              child: Con_wid.CommanText(
                  text: "Famous Places", Size: 20, fontweight: FontWeight.w700),
            ),
            SizedBox(height: 15),
            Container(
                height: 212,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Container(
                      height: 220,
                      width: 164,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'Assets/banner/city_banner4.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Con_wid.CommanText(
                                text: "laxmi vilas Place",
                                fontweight: FontWeight.w500,
                                Size: 16),
                          ),
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemSize: 20,
                                    itemCount: 5,
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 10,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  )),
                              Con_wid.CommanText(text: "(4.5)", Size: 16)
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Con_wid.CommanText(
                                text: "Open",
                                fontweight: FontWeight.bold,
                                Size: 15,
                                color: Colors.green,
                              ))
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  selectplaces() async {
    places = await Api_Helper.Select_api_Data(
        api: "https://neartravel.teleferti.com/api/places");
    print(places);
    setState(() {});
  }
}
