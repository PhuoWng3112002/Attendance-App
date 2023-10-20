import 'package:attendance_application/screens_by_admin/worksheet_infor_employee.dart';
import 'package:flutter/material.dart';

import '../components/color.dart';

class HRScreen extends StatefulWidget {
  const HRScreen({super.key});

  @override
  State<HRScreen> createState() => _HRScreenState();
}

class _HRScreenState extends State<HRScreen> {
  List<String> employee = [
    "Nguyễn Thị Phương",
    "Nguyễn Thị Tình",
    "Phan Quỳnh Anh"
  ];
  List<String> employeeEmail = [
    "thphg311@gmail.com",
    "nguyenhoaphongtinh@gmail.com",
    "anhpp@gmail.com"
  ];
  double screenHeight = 0;
  double screenWidth = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Quản lý nhân viên",
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
      ),
      body: Center(
        child: ListView.builder(
          itemCount: employee.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(employee[index]),
              leading: Text((index + 1).toString()),
              subtitle: Text(employeeEmail[index]),
              trailing: Text("0886127895"),
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => DetailEmployeeScreen(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
