import 'dart:math';
import 'package:catex/catex.dart';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSXTDDHTPPage extends StatefulWidget {
  @override
  _NoTSXTDDHTPPageState createState() => _NoTSXTDDHTPPageState();
}

List listAnswer = new List<String>();

class _NoTSXTDDHTPPageState extends State<NoTSXTDDHTPPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String result1 = "";
  String result2 = "";
  String result3 = "";
  String result4 = "";
  String db1 = "";
  String db2 = "";
  String db3 = "";
  String db4 = "";
  String db5 = "";
  String da1 = "";
  String da2 = "";
  String da3 = "";
  String da4 = "";
  String da5 = "";
  String td = "";
  double answerDelta_phay;
  GiaiTDDHS() {
    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    // y = ax^4 + bx^2 + c
    // a

    // double y' = 4*a*x^2 + 2b
    double delta_phay = -8 * a * b;
    // listAnswer = new List<String>();
    answerDelta_phay = delta_phay;
    typeFunction = 0;
    result1 = "";
    result2 = "";
    result3 = "";
    result4 = "";

    if (delta_phay <= 0) {
      //y' cung dau' voi' a

      if (a > 0) {
        // y DB tren
        result3 =
            "Hàm số nghịc biến trên (-oo;0) và hàm số đồng biến trên (0;+oo)";
      } else if (a < 0) {
        // y NB tren |R
        result3 =
            "Hàm số nghịc biến trên (-oo;0) và hàm số đồng biến trên (0;+oo)";
      }
    } else if (delta_phay > 0) {
      if (a > 0) {
        result3 =
            "Hàm số đồng biến trên (${(-sqrt(-8 * a * b)) / (4 * a)} ; 0) và ( ${(sqrt(-8 * a * b)) / (4 * a)} ; +oo )";
        // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)
        result4 =
            "Hàm số nghịch biến trên (-oo ; ${(-sqrt(-8 * a * b)) / (4 * a)}) và ( 0 ;${(sqrt(-8 * a * b)) / (4 * a)} )";
      } else if (a < 0) {
        result3 =
            "Hàm đồng biến trên (-oo ; ${(sqrt(-8 * a * b)) / (4 * a)}) và ( 0 ;${(-sqrt(-8 * a * b)) / (4 * a)} )";
        result4 =
            "Hàm nghịch biến trên (${(sqrt(-8 * a * b)) / (4 * a)});0) và (${(-sqrt(-8 * a * c)) / (4 * a)}; +oo)";

        // y DB tren (-oo; (-b-sqrt(A'))/3a)U((-b+sqrt(A'))/3a; +oo)

      }
    }
  }

  GiaiTDDHS1() {
    td = "Một số bài tập tương tự bài toán của bạn!!!!!";
    db1 = "Bài 1: Xét tính đơn điệu của hàm số y = x^4 – 2.x^2";
    da1 =
        "Hàm số đồng biến trên khoảng (-1;0) và (1;+oo), Hàm số nghịch biến trên khoảng (-oo;-1) và (0;1)";
    db2 = "Bài 2: Xét tính đơn điệu của hàm số y = x^4 – 8.x^2";
    da2 =
        "Hàm số đồng biến trên khoảng (-2;0) và (2;+oo), Hàm số nghịch biến trên khoảng (-oo;-2) và (0;2)";

    db3 =
        "Bài 3: Tìm GTLN, GTNN của hàm số y = (x^2 - 8x + 7)/(x^2 + 1)  trên [-3;5]";
    da3 = "GTNN của hàm số là -1 và GTLN của hàm số là 8";
    db4 = "Bài 4: TTìm GTLN, GTNN của hàm số y = (x - 1)/(x + 2) trên [0;2]";
    da4 = "GTNN của hàm số là -0.5 và GTLN của hàm số là 0.25";
    db5 = "Bài 5: Tìm GTLN, GTNN của hàm số y = (x^2 -3)/(x - 2) trên [3;4]";
    da5 = "GTNN của hàm số là 6 và GTLN của hàm số là 6.5";
  }

  String validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Xét tính đơn điệu hàm trùng phương"),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 5,
            // alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                          child: CaTeX(r'\ y = a.x^4 + b.x^2 + c'),
                        ),
                        SizedBox(height: 10.0),
                        
                        ListTile(
                          leading: Text("A"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: aTextEditingController,
                            decoration: textFieldInputDecoration("Điền A"),
                            validator: (val) {
                              validateMobile(val);
                            },
                          ),
                        ),
                        ListTile(
                          leading: Text("B"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: bTextEditingController,
                            decoration: textFieldInputDecoration("Điền B"),
                            validator: (val) {
                              validateMobile(val);
                            },
                            onChanged: (value) {
                              setState(() {
                                //num1 == num parse .
                              });
                            },
                          ),
                        ),
                        ListTile(
                          leading: Text("C"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: cTextEditingController,
                            decoration: textFieldInputDecoration("Điền C"),
                            validator: (val) {
                              validateMobile(val);
                            },
                            onChanged: (value) {
                              setState(() {
                                //num1 == num parse .
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            GiaiTDDHS();
                          });
                        },
                        child: Text("Kết quả"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            GiaiTDDHS1();
                          });
                        },
                        child: Text("Bài tập tương tự"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          aTextEditingController.text = "";
                          bTextEditingController.text = "";
                          cTextEditingController.text = "";
                        },
                        child: Text("Nhập lại"),
                      ),
                    ],
                  ),
                  //  cho viet de`
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Xét tính đơn điệu của hàm số y = ax^4 + bx^2 + c  "),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Xét tính đơn điệu của hàm số y = ${aTextEditingController.text}x^4 + ${bTextEditingController.text}x^2 + ${cTextEditingController.text}"),
                            // Text("Delta' $answerDelta_phay"),
                            // Text("$result1"),
                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("$result3",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result4",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$td",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$db1",
                            ),
                            Text("$da1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$db2",
                            ),
                            Text("$da2",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )
                      : Text(
                          "Bạn chưa nhập đề bài hoặc đề bài của bạn không đúng cấu trúc! Bạn hãy nhập đề bài vào theo đúng dạng nha")
                ],
              ),
            ),
          ),
        ));
  }
}
