import 'package:flutter/material.dart';
import 'package:teacher_app/animation/fade_animation.dart';
import 'package:teacher_app/components/pie_chart.dart';
import 'package:teacher_app/consts/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 236,
              decoration: const BoxDecoration(
                color: porpulLight,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 90,
                    width: 94,
                    height: 90,
                    child: FadeAnimation(
                      duration: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            opacity: 0.47,
                            image: AssetImage(
                              'assets/images/light-1.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //for menu icon
                  Positioned(
                    left: 25,
                    top: 50,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: porpulDark,
                        border: Border.all(
                          width: 0.5,
                          color: const Color(0xff000000).withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //for human icon
                  Positioned(
                    right: 65,
                    top: 50,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: porpulDark,
                        border: Border.all(
                          width: 0.5,
                          color: const Color(0xff000000).withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //for notification icon
                  Positioned(
                    right: 25,
                    top: 50,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: porpulDark,
                        border: Border.all(
                          width: 0.5,
                          color: const Color(0xff000000).withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //for hi
                  const Positioned(
                    right: 25,
                    top: 90,
                    child: Text(
                      'سلام',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //for username
                  const Positioned(
                    right: 90,
                    top: 90,
                    child: Text(
                      'سید',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //for discription
                  const Positioned(
                    right: 25,
                    top: 130,
                    child: Text(
                      '!معلم یا درس مورد نظرتو پیدا کن',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //for flower image
                  Positioned(
                    left: 50,
                    top: 75,
                    width: 101,
                    height: 98,
                    child: FadeAnimation(
                      duration: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/flower.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //for textfiled
                  Positioned(
                    bottom: 15,
                    left: 25,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      width: 347,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'جستوجو معلم یا درس',
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xffDCDCDC),
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color(0xffDCDCDC),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 341,
              height: 306,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: porpul1,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // رنگ سایه
                    spreadRadius: 1, // فاصله‌ی گسترش سایه
                    blurRadius: 5, // شدت محو شدن سایه
                    offset: const Offset(0, 2), // فقط به پایین سایه می‌دهیم
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 15,
                    right: 15,
                    top: 20,
                    child: Container(
                      width: 311,
                      height: 115,
                      decoration: BoxDecoration(
                        color: porpulDark,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // رنگ سایه
                            spreadRadius: 2, // فاصله‌ی گسترش سایه
                            blurRadius: 5, // شدت محو شدن سایه
                            offset:
                                const Offset(0, 5), // فقط به پایین سایه می‌دهیم
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PieChartComponent(
                              outerRadius: 50,
                              innerRadius: 40,
                              data: [15, 20, 30, 35],
                              colors: [
                                Colors.red,
                                Colors.blue,
                                Colors.yellow,
                                Colors.green,
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'دروس امروز',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: yellow,
                                  ),
                                ),
                                Text(
                                  maxLines: 3,
                                  style: TextStyle(
                                    color: yellow,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  'در این بخش دروسی که',
                                ),
                                Text(
                                  maxLines: 3,
                                  style: TextStyle(
                                    color: yellow,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  'بیشترین معلم را دارند',
                                ),
                                Text(
                                  maxLines: 3,
                                  style: TextStyle(
                                    color: yellow,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  '.مشاهده می کنید',
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //for top left pie chart
                  const Positioned(
                    top: 150,
                    left: 50,
                    child: Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'زبان',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              '25%',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PieChartComponent(
                          innerRadius: 25,
                          outerRadius: 30,
                          data: [75, 25],
                          colors: [
                            pieColor,
                            pieRed,
                          ],
                        ),
                      ],
                    ),
                  ),
                  //for top right pie chart
                  const Positioned(
                    top: 150,
                    right: 50,
                    child: Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'فیزیک',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              '22%',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PieChartComponent(
                          innerRadius: 25,
                          outerRadius: 30,
                          data: [78, 22],
                          colors: [
                            pieColor,
                            pieYellow,
                          ],
                        ),
                      ],
                    ),
                  ),
                  //for bottom left pie chart
                  const Positioned(
                    top: 220,
                    left: 50,
                    child: Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'ریاضی',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              '29%',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PieChartComponent(
                          innerRadius: 25,
                          outerRadius: 30,
                          data: [71, 29],
                          colors: [
                            pieColor,
                            pieGreen,
                          ],
                        ),
                      ],
                    ),
                  ),
                  //for bottom right pie chart
                  const Positioned(
                    top: 220,
                    right: 50,
                    child: Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'متفرقه',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              '70%',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PieChartComponent(
                          innerRadius: 25,
                          outerRadius: 30,
                          data: [30, 70],
                          colors: [
                            pieColor,
                            pieBlue,
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'دیدن همه',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: blueTeacher,
                    ),
                  ),
                  Text(
                    'معلمان',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: greyTeacher,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                SizedBox(
                  height: height * 0.2,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 25, right: 15),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: TeacherItems(width: width, height: height),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'دیدن همه',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: blueTeacher,
                    ),
                  ),
                  Text(
                    'معلمان',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: greyTeacher,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeacherItems extends StatelessWidget {
  const TeacherItems({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      width: width * 0.5,
      height: height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: porpul1,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // رنگ سایه
            spreadRadius: 2, // فاصله‌ی گسترش سایه
            blurRadius: 5, // شدت محو شدن سایه
            offset: const Offset(0, 5), // فقط به پایین سایه می‌دهیم
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: width * 0.45,
            height: height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: porpulDark,
              image: const DecorationImage(
                image: AssetImage('assets/images/math.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                textAlign: TextAlign.right,
                'آموزش حرفه ای ریاضی',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                textAlign: TextAlign.center,
                'فوق لیسانس ریاضی از دانشگاه تست',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: porpulLight,
                ),
              ),
              Icon(
                Icons.menu_book_sharp,
                color: porpulLight,
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //one
              Icon(
                Icons.star,
                color: yellow,
                size: 14,
              ),
              Text(
                textAlign: TextAlign.center,
                '4.8',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),

              //two
              Icon(
                Icons.monetization_on_outlined,
                size: 14,
              ),
              Text(
                textAlign: TextAlign.center,
                '299.000',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              //three
              Icon(
                Icons.co_present_rounded,
                size: 14,
              ),
              Text(
                textAlign: TextAlign.center,
                'نام معلم',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
