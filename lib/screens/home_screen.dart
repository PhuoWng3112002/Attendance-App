import 'package:attendance_application/components/color.dart';
import 'package:attendance_application/screens/information_screen.dart';
import 'package:attendance_application/screens/login_screen.dart';
import 'package:attendance_application/screens/worksheet_screen.dart';
import 'package:attendance_application/screens_by_admin/home_screen_by_admin.dart';
import 'package:attendance_application/screens_by_admin/hr_management.dart';
import 'package:attendance_application/screens_by_admin/worksheet_screen_by_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  String checkIn = "--/--";
  String checkOut = "--/--";

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Welcome,\nthphg311@gmail.com',
                style: TextStyle(
                    fontSize: screenWidth / 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          backgroundColor: primary,
          //chiều cao app bar(tool bar)
          toolbarHeight: screenWidth / 5,
          elevation: 5, //shadow app bar
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert))
          ],
        ),
        drawer: const NavigationDrawer(),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Wrap(
                          children: [
                            Icon(
                              Icons.access_alarm,
                              color: primary,
                              size: screenWidth / 18,
                            ),
                            Text(
                              " Phép tồn",
                              style: TextStyle(
                                  fontSize: screenWidth / 22,
                                  color: primary,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "12/12",
                          style: TextStyle(
                            color: primary,
                            fontSize: screenWidth / 21,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * .03),
              /**CHECK IN?OUT BOX */
              Container(
                margin: const EdgeInsets.only(top: 12, left: 6, right: 6),
                height: screenHeight / 3.5,
                decoration: const BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: black26,
                      blurRadius: 10,
                      offset: Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: screenHeight / 17,
                      decoration: const BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: DateFormat('EE , dd MMMM yyyy')
                                .format(DateTime.now()),
                            style: TextStyle(
                              color: white,
                              fontSize: screenWidth / 23,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight / 35,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      checkIn,
                                      style: TextStyle(
                                        color: accent,
                                        fontSize: screenWidth / 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              /*****************CHECK OUT***************** */
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      checkOut,
                                      style: TextStyle(
                                        color: primary,
                                        fontSize: screenWidth / 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight / 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CupertinoButton(
                                      padding: EdgeInsets.zero,
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(top: 20.0),
                                        alignment: Alignment.center,
                                        width: screenWidth / 2.5,
                                        height: screenHeight / 18,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(37),
                                          gradient: const LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.topLeft,
                                            colors: [primary, secondary],
                                          ),
                                        ),
                                        child: const Text(
                                          "CHECK OUT",
                                          style: TextStyle(
                                            color: white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * .03),

              /************7 ngày gần nhất**************** */
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "7 ngày gần đây,",
                  style: TextStyle(
                    color: Colors.black,
                    // fontFamily:
                    fontSize: screenWidth / 20,
                  ),
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      height: screenHeight / 9,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: black26,
                            blurRadius: 10,
                            offset: Offset(2, 2),
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(),
                              child: Center(
                                child: Text(
                                  DateFormat('EE\ndd MM yyyy')
                                      .format(DateTime.now()),
                                  style: TextStyle(
                                    fontSize: screenWidth / 23,
                                    color: black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      foregroundColor: white,
                                      backgroundColor: accent,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                      textStyle: TextStyle(
                                        fontSize: screenWidth / 28,
                                      )),
                                  onPressed: () {},
                                  child: const Text('CHECK IN'),
                                ),
                                Text(
                                  "8:30",
                                  style: TextStyle(
                                    fontSize: screenWidth / 18,
                                    color: accent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      foregroundColor: white,
                                      backgroundColor: primary,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                      textStyle: TextStyle(
                                        fontSize: screenWidth / 28,
                                      )),
                                  onPressed: () {},
                                  child: const Text('CHECK OUT'),
                                ),
                                Text(
                                  "16:30",
                                  style: TextStyle(
                                    fontSize: screenWidth / 18,
                                    color: primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /***************ListView******************** */
                  ],
                ),
              ),
            ])));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // buildHeader(context);
              // buildMenuItem();
              //Trang thông tin cá nhan
              // và trang quản lý thông tin cá nhân giống nhau
              //phân quyền thì hide btn đi
              Material(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const InformationScreen(),
                    ));
                  },
                  child: Container(
                    color: primary,
                    padding: EdgeInsets.only(
                      top: 20 + MediaQuery.of(context).padding.top,
                      bottom: 20,
                      left: 25,
                    ),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/logo.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "thphg311@gmail.com\n Nguyễn Thị Phương",
                          style: TextStyle(
                            fontSize: 15,
                            color: white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  runSpacing: 2,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.home_outlined),
                      title: const Text("Trang chủ/Bảng công ad"),
                      onTap: () => Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(
                        builder: (context) => const WorkSheetAdminScreen(),
                      )),
                    ),
                    ListTile(
                      leading: const Icon(Icons.add_chart),
                      title: const Text("Bảng công✔"),
                      onTap: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const WorkSheetScreen(),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.calendar_month_rounded),
                      title: const Text("Lịch/AdminHome✔"),
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const HomeScreenAdmin())),
                    ),
                    ListTile(
                      //Quản trị nhân lực== DS nhân viên
                      leading: const Icon(Icons.add_task_rounded),
                      title: const Text("Xin nghỉ/QLNV✔"),
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const HRScreen())),
                    ),
                    ListTile(
                      leading: const Icon(Icons.change_circle_outlined),
                      title: const Text("Đổi mật khẩu"),
                      onTap: () {},
                    ),
                    const Divider(
                      color: black54,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.outbond_rounded,
                        color: accent,
                      ),
                      title: const Text(
                        "Đăng xuất",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      onTap: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  //cách khác
//   Widget buildHeader(BuildContext context) => Material(
//         child: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//             Navigator.of(context).pushReplacement(MaterialPageRoute(
//               builder: (context) => const LoginScreen(),
//             ));
//           },
//           child: Container(
//             color: primary,
//             padding: EdgeInsets.only(
//               top: 24 + MediaQuery.of(context).padding.top,
//               bottom: 24,
//               left: 5,
//             ),
//             child: const Column(
//               children: [
//                 CircleAvatar(
//                   radius: 35,
//                   backgroundImage: AssetImage("assets/images/image_1.png"),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   "thphg311@gmail.com",
//                   style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w900),
//                 )
//               ],
//             ),
//           ),
//         ),
//       );
//   Widget buildMenuItem(BuildContext context) => Container(
//         padding: const EdgeInsets.all(24),
//         child: Wrap(
//           runSpacing: 10,
//           children: [
//             ListTile(
//               leading: const Icon(Icons.home_outlined),
//               title: const Text("Trang chủ"),
//               onTap: () {},
//               // =>
//               //     Navigator.of(context).pushReplacement(MaterialPageRoute(
//               //   builder: (context) => const Home(),
//               // )),
//             ),
//             ListTile(
//                 leading: const Icon(Icons.home_outlined),
//                 title: const Text('Bảng công'),
//                 onTap: () {
//                   Navigator.of(context).pushReplacement(MaterialPageRoute(
//                     builder: (context) => const LoginScreen(),
//                   ));
//                 }),
//             ListTile(
//               leading: const Icon(Icons.home_outlined),
//               title: const Text('Home Admin'),
//               onTap: () {
//                 Navigator.of(context).pushReplacement(MaterialPageRoute(
//                   builder: (context) => const LoginScreen(),
//                 ));
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.home_outlined),
//               title: const Text("Xin nghỉ"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: const Icon(Icons.home_outlined),
//               title: const Text("Đổi mật khẩu"),
//               onTap: () {},
//             ),
//             const Divider(
//               color: Colors.black54,
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.outbond_rounded,
//                 color: Color(0xfffe8005),
//               ),
//               title: const Text(
//                 "Đăng xuất",
//                 style: TextStyle(
//                   fontSize: 16,
//                 ),
//               ),
//               onTap: () => Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(
//                   builder: (context) => const LoginScreen(),
//                 ),
//               ),
//             )
//           ],
//         ),
//       );
}
