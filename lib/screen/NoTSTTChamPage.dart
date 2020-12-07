import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSTTCHSPage extends StatefulWidget {
  @override
  _NoTSTTCHSPageState createState() => _NoTSTTCHSPageState();
}

List listAnswer = new List<String>();

class _NoTSTTCHSPageState extends State<NoTSTTCHSPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController eTextEditingController = new TextEditingController();
  TextEditingController fTextEditingController = new TextEditingController();
  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String result1 = "";
  String result2 = "";
  String result3 = "";
  String result4 = "";

  double ans_delta_cuatu;
  GiaiTDDHS() {
    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);
    double e = double.parse(eTextEditingController.text);
    double f = double.parse(fTextEditingController.text);
    ans_delta_cuatu = 0;
    typeFunction = 0;
    result1 = "";

    //y=(ax^2+bx+c)/(dx+e)
    //đkxd x khac -e/d
    //y_phay=((a*d)*pow(x,2) + 2*a*e*x + (b*e-c*d))/pow((d*x+e),2)

    double delta_cuatu = e * e - 4 * d * f;
    ans_delta_cuatu = delta_cuatu;
    if (d == 0) if (a * (f / e) * (f / e) + b * f / e + c == 0)
      result1 = "Hàm số không có tiệm cận đứng";
    else
      result1 = " Hàm số có tiệm cận đứng là x = ${-f / e} ";
    if (d != 0) {
      if (delta_cuatu < 0) result1 = "Hàm số không có tiệm cận đứng";
      if (delta_cuatu == 0) {
        double x0 = -e / (2 * d);
        if ((a * x0 * x0 + b * x0 + c == 0) && (b * b - 4 * a * c == 0))
          result1 = "Hàm số không có tiệm cận đứng";
        else
          result1 = " Hàm số có tiệm cận đứng là x = $x0.";
      }
      if (delta_cuatu > 0) {
        double x1 = (-e - sqrt(delta_cuatu)) / (2 * d);
        double x2 = (-e + sqrt(delta_cuatu)) / (2 * d);
        if (a * x1 * x1 + b * x1 + c == 0)
          result1 = "Hàm số không có tiệm cận đứng";
        else
          result1 = " Hàm số có tiệm cận đứng là x = $x1 .";
        if (a * x2 * x2 + b * x2 + c == 0)
          result1 = "Hàm số không có tiệm cận đứng";
        else
          result1 = " Hàm số có tiệm cận đứng là x = $x2 .";
      }
    }
    if ((a != 0) && (d != 0))
      result2 = "Hàm số có tiệm cận ngang là y = ${a / d}. ";
    if ((a == 0) && (d != 0)) result2 = "Hàm số có tiệm cận ngang là y = 0. ";
    if ((a != 0) && (d == 0)) result2 = "Hàm số không có tiệm cận ngang. ";
    if ((a == 0) && (d == 0)) {
      if ((b != 0) && (e != 0))
        result2 = "Hàm số có tiệm cận ngang là y = ${b / e}. ";
      if ((b == 0) && (e != 0)) result2 = "Hàm số có tiệm cận ngang là y = 0. ";
      if ((b != 0) && (e == 0)) result2 = "Hàm số không có tiệm cận ngang. ";
    }
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
          title: Text("Tìm tiệm cận của hàm phân thức"),
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
                        ListTile(
                          leading: Text("D"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: dTextEditingController,
                            decoration: textFieldInputDecoration("Điền D"),
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
                          leading: Text("E"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: eTextEditingController,
                            decoration: textFieldInputDecoration("Điền E"),
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
                          leading: Text("F"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: fTextEditingController,
                            decoration: textFieldInputDecoration("Điền F"),
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
                        child: Text("Solve"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          aTextEditingController.text = "";
                          bTextEditingController.text = "";
                          cTextEditingController.text = "";
                          dTextEditingController.text = "";
                          eTextEditingController.text = "";
                          fTextEditingController.text = "";
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Tìm tiệm cận của hàm số y = (ax^2 + bx + c)/(dx^2 + ex + f) (a,d có thể bằng 0)"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Tìm tiệm cận của hàm số y = (${aTextEditingController.text}x^2 + ${bTextEditingController.text}x + ${cTextEditingController.text})/(${dTextEditingController.text}x^2 + ${eTextEditingController.text}x + ${fTextEditingController.text})"),
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