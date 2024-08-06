import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshy_app/modules/objects/booking_now.dart';
import 'package:sizer/sizer.dart';
import 'package:badges/badges.dart' as badges;

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomepageForm();
  }
}

class HomepageForm extends StatefulWidget {
  const HomepageForm({super.key});

  @override
  State<HomepageForm> createState() => _HomepageFormState();
}

class _HomepageFormState extends State<HomepageForm> {
  List<BookingNow> listBookingNows = getAllBookingNows();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final safePadding = MediaQuery.of(context).padding.top;
    final safeBotPadding = MediaQuery.of(context).padding.bottom;
    print(safeBotPadding);
    final heightOfContainer = safePadding >= 30 ? 25.0.h : safePadding + 25.0.h;
    final topPaddingBody = safePadding >= 30 ? 30.0.h : 35.0.h;
    return Scaffold(
      // bottomNavigationBar: Container(
      //   height: 120 + safeBotPadding,
      //   child: Column(
      //     children: [
      //       CurvedNavigatorBar(),
      //       Container(
      //         height: safeBotPadding,
      //         color: Color(0XFFF5F5F5),
      //       )
      //     ],
      //   ),
      // ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Stack(children: [
              Container(
                padding: EdgeInsets.only(top: topPaddingBody),
                color: Color(0XFFFEF2E4),
                child: Column(
                  children: [
                    Expanded(
                      child: ScrollConfiguration(
                          behavior: ScrollConfiguration.of(context).copyWith(
                            dragDevices: {
                              PointerDeviceKind.touch,
                              PointerDeviceKind.mouse,
                            },
                          ),
                          child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 30, left: 15),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Ưu đãi hôm nay",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 21),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: const Icon(
                                            Icons.arrow_circle_right_rounded,
                                            color: Colors.grey,
                                            size: 21,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 180,
                                    margin: const EdgeInsets.only(top: 20),
                                    child: _buildBookingNow(screenWidth),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 30, left: 15),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Ưu đãi hôm nay",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 21),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: const Icon(
                                            Icons.arrow_circle_right_rounded,
                                            color: Colors.grey,
                                            size: 21,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 180,
                                    margin: const EdgeInsets.only(top: 20),
                                    child: _buildBookingNow(screenWidth),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 30, left: 15),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Ưu đãi hôm nay",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 21),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: const Icon(
                                            Icons.arrow_circle_right_rounded,
                                            color: Colors.grey,
                                            size: 21,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 180,
                                    margin: const EdgeInsets.only(top: 20),
                                    child: _buildBookingNow(screenWidth),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 30, left: 15),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Ưu đãi hôm nay",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 21),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: const Icon(
                                            Icons.arrow_circle_right_rounded,
                                            color: Colors.grey,
                                            size: 21,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 180,
                                    margin: const EdgeInsets.only(top: 20),
                                    child: _buildBookingNow(screenWidth),
                                  ),
                                  Container(
                                    height: 140 + safeBotPadding,
                                    color: Color(0XFFFEF2E4),
                                  )
                                ],
                              ))),
                    ),
                  ],
                ),
              ),
              Container(
                  height: heightOfContainer,
                  color: const Color(0xFF70450C),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SafeArea(
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        height: 90,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Xin chào, Lai Thế",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Bắt đầu đặt hàng thôi nào!",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19))
                              ],
                            ),
                            badges.Badge(
                                badgeContent: Text(
                                  "0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                child: Icon(Icons.circle_notifications_rounded,
                                    size: 40, color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 17.0.h),
                child: Container(
                  height: 115,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: const Color(0XFFF5F5F5),
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF70450C),
                                  border: Border.all(),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.3), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset:
                                          const Offset(0, 4), // Shadow offset
                                    ),
                                  ],
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                  "assets/svg_icon/my_require.svg",
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.scaleDown),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 55,
                              child: const Center(
                                child: Text(
                                  "Yêu cầu của tôi",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF70450C),
                                  border: Border.all(),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.3), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset:
                                          const Offset(0, 4), // Shadow offset
                                    ),
                                  ],
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                  "assets/svg_icon/scanner.svg",
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.scaleDown),
                            ),
                            Container(
                              width: 55,
                              alignment: Alignment.center,
                              child: const Center(
                                child: Text(
                                  "Quét mã đại lý",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF70450C),
                                  border: Border.all(),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.3), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset:
                                          const Offset(0, 4), // Shadow offset
                                    ),
                                  ],
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                  "assets/svg_icon/contact.svg",
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.scaleDown),
                            ),
                            Container(
                              width: 55,
                              alignment: Alignment.center,
                              child: const Center(
                                child: Text(
                                  "Liên hệ đại lý",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF70450C),
                                  border: Border.all(),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.3), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset:
                                          const Offset(0, 4), // Shadow offset
                                    ),
                                  ],
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                  "assets/svg_icon/feedback.svg",
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.scaleDown),
                            ),
                            Container(
                              width: 55,
                              alignment: Alignment.center,
                              child: const Center(
                                child: Text(
                                  "Góp ý\n",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Positioned(
            height: 120 + safeBotPadding,
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,
              height: 120 + safeBotPadding,
              child: Column(
                children: [
                  CurvedNavigatorBar(),
                  Container(
                    height: safeBotPadding,
                    color: Color(0XFFF5F5F5),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookingNow(screenWidth) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: buildListBookingNows(screenWidth),
    );
  }

  List<Widget> buildListBookingNows(double screenWidth) {
    List<Widget> list = [];
    for (var i = 0; i < listBookingNows.length; i++) {
      list.add(buildListBookingNow(listBookingNows[i], i, screenWidth));
    }
    return list;
  }

  Widget buildListBookingNow(
      BookingNow listBookingNow, int index, double screenWidth) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: index == 0 ? 16 : 0),
      width: screenWidth / 2 + 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey[100]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              listBookingNow.image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                listBookingNow.name,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvedNavigatorBar extends StatefulWidget {
  const CurvedNavigatorBar({super.key});

  @override
  State<CurvedNavigatorBar> createState() => _CurvedNavigatorBarState();
}

class _CurvedNavigatorBarState extends State<CurvedNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      // color: const Color(0xFFFEF2E4),
      child: Stack(
        children: [
          Positioned(
            height: 120,
            bottom: 0,
            left: 0,
            child: CustomPaint(
              painter:
                  AppBarPainter(MediaQuery.of(context).size.width / 2 - 70),
              size: Size(MediaQuery.of(context).size.width, 86.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 50, left: 0, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset("assets/svg_icon/home.svg",
                              width: 27, height: 27, fit: BoxFit.scaleDown),
                          const Text(
                            "Trang chủ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset("assets/svg_icon/menu.svg",
                                width: 27, height: 27, fit: BoxFit.scaleDown),
                            const Text(
                              "Khác",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 7,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text(
                "Đặt hàng",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
            ),
          ),
          Positioned(
            bottom: 48,
            child: GestureDetector(
              onTap: () => {print("click")},
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.3), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: const Offset(0, 4), // Shadow offset
                          ),
                        ],
                        shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/images/logo_app.png",
                      width: 60,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarPainter extends CustomPainter {
  double x;
  AppBarPainter(this.x);

  double height = 86.0;
  double start = 34.0;
  double end = 120;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color(0xFFF5F5F5)
      ..style = PaintingStyle.fill;

    var borderPaint = Paint()
      ..color = const Color(
          0XFFA7A2A2) // You can change the color to whatever you like
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0; // Adjust the width of the border

    Path path = Path();
    path.moveTo(0.0, start);
    path.lineTo(x - 10, start);
    path.quadraticBezierTo(
        10.0 + x, start, 30.0 + x, start + 30.0); // Giảm từ 30.0 xuống 20.0
    path.quadraticBezierTo(20.0 + x, start + 30.0, 30.0 + x,
        start + 30.0); // Giảm từ 55.0 xuống 35.0
    path.quadraticBezierTo(40.0 + x, start + 48.0, 70.0 + x,
        start + 48.0); // Giảm từ 55.0 và 30.0 xuống 35.0 và 20.0
    path.quadraticBezierTo(100.0 + x, start + 48.0, 110.0 + x,
        start + 30.0); // Giảm từ 55.0 và 30.0 xuống 35.0 và 20.0
    path.quadraticBezierTo(130.0 + x, start, x + 150, start);

    // path.quadraticBezierTo(
    //     120.0 + x,
    //     start,
    //     (140.0 + x) > (size.width - 20.0) ? (size.width - 20.0) : 140.0 + x,
    //     start);
    path.lineTo(size.width - 20.0, start);

    /// Box with BorderRadius
    path.quadraticBezierTo(size.width, start, size.width, start);
    path.lineTo(size.width, start);
    path.lineTo(size.width, end - 25.0);
    path.quadraticBezierTo(size.width, end, size.width, end);
    path.lineTo(25.0, end);
    path.quadraticBezierTo(0.0, end, 0.0, end);
    path.lineTo(0.0, start + 25.0);
    path.quadraticBezierTo(0.0, start, 0, start);
    path.close();

    canvas.drawPath(path, paint);

    // Define the path for the border (excluding bottom edge)
    Path borderPath = Path();
    borderPath.moveTo(0.0, start);
    borderPath.lineTo(x - 10, start);
    borderPath.quadraticBezierTo(10.0 + x, start, 30.0 + x, start + 30.0);
    borderPath.quadraticBezierTo(20.0 + x, start, 30.0 + x, start + 30.0);
    borderPath.quadraticBezierTo(
        40.0 + x, start + 48.0, 70.0 + x, start + 48.0);
    borderPath.quadraticBezierTo(
        100.0 + x, start + 48.0, 110.0 + x, start + 30.0);
    borderPath.quadraticBezierTo(130.0 + x, start, x + 150, start);
    borderPath.lineTo(size.width - 20.0, start);
    borderPath.quadraticBezierTo(size.width, start, size.width, start);
    borderPath.lineTo(size.width, start);
    borderPath.lineTo(size.width, end - 25.0);

    // Skip the bottom edge by not connecting to the bottom left corner
    borderPath.moveTo(0.0, end);
    borderPath.lineTo(0.0, start + 25.0);
    borderPath.quadraticBezierTo(0.0, start, 0, start);
    canvas.drawPath(borderPath, borderPaint);

    /// Circle to show at the top of the drop
    canvas.drawCircle(Offset(x + 70.0, 35.0), 35.0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
