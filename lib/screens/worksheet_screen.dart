import 'package:attendance_application/components/color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorkSheetScreen extends StatefulWidget {
  const WorkSheetScreen({super.key});

  @override
  State<WorkSheetScreen> createState() => _WorkSheetScreenState();
}

class _WorkSheetScreenState extends State<WorkSheetScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  String checkIn = "--/--";
  String checkOut = "--/--";

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: primary,
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "Bảng công",
                style: TextStyle(
                  fontSize: screenWidth / 20,
                  color: Colors.white,
                ),
              )
            ],
          ),
          backgroundColor: primary,
          //chiều cao app bar(tool bar)
          toolbarHeight: screenWidth / 5,
          elevation: 0, //shadow app bar
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(15),
          //     bottomRight: Radius.circular(15),
          //   ),
          // ),

          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenHeight,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: screenHeight / 18),
                      height: screenHeight,
                      decoration: const BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: Column(children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      alignment: Alignment.center,
                                      height: screenHeight * 0.06,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: white,
                                        boxShadow: const [
                                          BoxShadow(
                                            color: black26,
                                            blurRadius: 10,
                                            offset: Offset(2, 2),
                                          )
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Wrap(
                                                  children: [
                                                    Icon(
                                                      Icons.calendar_month,
                                                      color: primary,
                                                      size: screenWidth / 18,
                                                    ),
                                                    Text(
                                                      " Công nhật",
                                                      style: TextStyle(
                                                          fontSize:
                                                              screenWidth / 22,
                                                          color: primary,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "30",
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
                                    ),
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight / 28,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: (screenWidth - 60) * .5,
                                height: screenHeight * .06,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  border: Border.all(color: primary),
                                  color: white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          DateFormat('MMMM')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: screenWidth / 23,
                                            color: primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          Icons.calendar_month,
                                          size: screenWidth / 18,
                                          color: primary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        //ListView đây
                        SingleChildScrollView(
                          padding: const EdgeInsets.only(top: 20),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                                foregroundColor: white,
                                                backgroundColor: accent,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0)),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                                foregroundColor: white,
                                                backgroundColor: primary,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0)),
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
                        //List danh sách chấm công

                        /********************************** */
                        // ListView.builder(
                        //   itemCount: listAttendance.length,
                        //   shrinkWrap: true,
                        //   physics: NeverScrollableScrollPhysics(),
                        //   itemBuilder: (context, index) {
                        //     return AttendanceItem(listAttendance[index]);
                        //   }
                        // )
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
