import 'dart:math';
import 'package:catex/catex.dart';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSTCTHTPPage extends StatefulWidget {
  @override
  _NoTSTCTHTPPageState createState() => _NoTSTCTHTPPageState();
}

List listAnswer = new List<String>();

class _NoTSTCTHTPPageState extends State<NoTSTCTHTPPage> {
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

    typeFunction = 0;
    result1 = "";
    result2 = "";
    result3 = "";
    result4 = "";

// y=ax^4 + bx^2 + c
    // y_phay = 4ax^3 + 2bx
    // y_phay= 2x(2ax^2 + b)

    double delta_trongngoac = -2 * a * b;
    answerDelta_phay = delta_trongngoac;

    if (a * b > 0) {
      if ((a > 0) && (b > 0))
        result1 = " Hàm số đạt cực tiểu tại x=0 và giá trị cực tiểu là $c";
      else if ((a < 0) && (b < 0))
        result1 = " Hàm số đạt cực đại tại x=0 và giá trị cực đại là $c";
    } else {
      double x1 = -sqrt(-2 * a * b) / (2 * a);
      double x2 = sqrt(-2 * a * b) / (2 * a);
      double y1 = a * pow(x1, 4) + b * pow(x1, 2) + c;
      double y2 = a * pow(x2, 4) + b * pow(x2, 2) + c;
      if ((a > 0) && (b < 0)) {
        result1 =
            "Hàm số đạt cực tiểu  tại x = $x1 và x =$x2 và giá trị cực tiểu là $y1";
        result2 = "Hàm số đạt cực đại tại x = 0 và giá trị cực đại là $c";
      } else if ((a < 0) && (b > 0)) {
        result1 =
            "Hàm số đạt cực đại  tại x = $x1 và x =$x2 và giá trị cực đại là $y1";
        result2 = "Hàm số đạt cực tiểu tại x = 0 và giá trị cực tiểu là $c";
      }
    }
  }

  GiaiTDDHS1() {
    td = "Một số bài tập tương tự bài toán của bạn!!!!!";
    db1 = "Bài 1: Tìm cực trị của hàm số y = 1.x^4 + 2.x^2 - 3";
    da1 =
        "Hàm số không có điểm cực đại, Hàm số đạt cực tiểu tại x=0 và giá trị cực tiểu là -3";
    db2 = "Bài 2: Tìm cực trị của hàm số y = -2.x^4 + 4.x^2 + 6";
    da2 =
        "Hàm số đạt cực đại tại x=1 và x=-1 và giá trị cực đại là 8, Hàm số đạt cực tiểu tại x=0 và giá trị cực tiểu là 6";
    db3 = "Bài 3: Tìm cực trị của hàm số y = 1.x^4 - 2.x^2 + 1";
    da3 =
        "Hàm số đạt cực đại tại x=0 và giá trị cực đại là 1, Hàm số đạt cực tiểu tại x=1 và x=-1 và giá trị cực tiểu là 0";

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
          title: Text("Tìm điểm cực trị hàm trùng phương y = ax^4 + bx^2 + c"),
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
                  // cho viet de`
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Tìm điểm cực trị của hàm số y = a*x^4 + b*x^2 + c"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Tìm điểm cực trị của hàm số y = ${aTextEditingController.text}x^4 + ${bTextEditingController.text}x^2 + ${cTextEditingController.text}"),
                            // Text("Delta' $answerDelta_phay"),
                            // Text("$result1"),
                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("$result1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$result2",
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
                            Text(
                              "$db3",
                            ),
                            Text("$da3",
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
