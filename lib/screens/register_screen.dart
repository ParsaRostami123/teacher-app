import 'package:flutter/material.dart';
import 'package:teacher_app/animation/fade_animation.dart';
import 'package:teacher_app/screens/home_screen.dart';
import 'package:teacher_app/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? userType;
  bool isFemaleTeacher = false;
  bool isMaleTeacher = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: FadeAnimation(
                        duration: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-1.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: FadeAnimation(
                        duration: 1.3,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-2.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: FadeAnimation(
                        duration: 1.5,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/clock.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: FadeAnimation(
                        duration: 1.6,
                        child: Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: const Center(
                            child: Text(
                              'ثبت نام',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Dropdown widget
              SizedBox(
                width: 250,
                child: DropdownButtonFormField<String>(
                  hint: const Text(
                    'نوع کاربر را انتخاب کنید',
                    style: TextStyle(color: Colors.grey), // رنگ متن hint
                  ),
                  value: userType,
                  onChanged: (String? newValue) {
                    setState(() {
                      userType = newValue;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:
                        const Color(0xFFEDE7F6), // رنگ پس‌زمینه بنفش کم‌رنگ
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none, // حذف خط مرزی
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                  ),
                  items: <String>['دانش‌آموز', 'معلم']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                            color: Colors.black), // رنگ متن گزینه‌ها
                      ),
                    );
                  }).toList(),
                  dropdownColor:
                      const Color(0xFFEDE7F6), // رنگ پس‌زمینه منوی کشویی
                  style: const TextStyle(
                      color: Colors.black), // رنگ متن انتخاب شده
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    if (userType == 'دانش‌آموز') ...[
                      FadeAnimation(
                        duration: 0.75,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, 1),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240)),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'نام کاربری',
                                    hintTextDirection: TextDirection.ltr,
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240)),
                                  ),
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'رمز عبور',
                                    hintTextDirection: TextDirection.ltr,
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color:
                                            Color.fromARGB(255, 240, 240, 240)),
                                  ),
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'تکرار رمز عبور',
                                    hintTextDirection: TextDirection.ltr,
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                              TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'شماره تلفن',
                                  hintTextDirection: TextDirection.ltr,
                                  hintStyle: TextStyle(
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    // فیلدهای اضافی برای معلم
                    if (userType == 'معلم') ...[
                      // فیلدهای اضافی برای معلم
                      AnimatedOpacity(
                        opacity: userType == 'معلم' ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 500),
                        child: userType == 'معلم'
                            ? FadeAnimation(
                                duration: 0.75,
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(143, 148, 251, 1),
                                        blurRadius: 20,
                                        offset: Offset(0, 10),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      // فیلد ایمیل یا شماره تلفن
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 240, 240, 240),
                                            ),
                                          ),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'نام کاربری',
                                            hintTextDirection:
                                                TextDirection.ltr,
                                            hintStyle: TextStyle(
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                        ),
                                      ),
                                      // فیلد رمز ورود
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 240, 240, 240),
                                            ),
                                          ),
                                        ),
                                        child: TextField(
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'رمز عبور',
                                            hintTextDirection:
                                                TextDirection.ltr,
                                            hintStyle: TextStyle(
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 240, 240, 240),
                                            ),
                                          ),
                                        ),
                                        child: TextField(
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'تکرار رمز عبور',
                                            hintTextDirection:
                                                TextDirection.ltr,
                                            hintStyle: TextStyle(
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 240, 240, 240),
                                            ),
                                          ),
                                        ),
                                        child: TextField(
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'شماره تلفن',
                                            hintTextDirection:
                                                TextDirection.ltr,
                                            hintStyle: TextStyle(
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                        ),
                                      ),
                                      // چک باکس خانم معلم
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: isFemaleTeacher,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isFemaleTeacher =
                                                    value ?? false;
                                                if (isFemaleTeacher) {
                                                  isMaleTeacher =
                                                      false; // انتخاب تنها یک گزینه
                                                }
                                              });
                                            },
                                            activeColor: const Color(
                                                0xFFB39DDB), // رنگ فعال چک باکس
                                          ),
                                          const Text(
                                            'خانم معلم',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                      // چک باکس آقا معلم
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: isMaleTeacher,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isMaleTeacher = value ?? false;
                                                if (isMaleTeacher) {
                                                  isFemaleTeacher =
                                                      false; // انتخاب تنها یک گزینه
                                                }
                                              });
                                            },
                                            activeColor: const Color(
                                                0xFFB39DDB), // رنگ فعال چک باکس
                                          ),
                                          const Text(
                                            'آقا معلم',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : Container(),
                      ),
                    ],

                    const SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                      duration: 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, 150),
                              ],
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'ثبت نام',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      duration: 2.1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'قبلا ثبت نام کرده اید؟ ورود',
                          style: TextStyle(
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
