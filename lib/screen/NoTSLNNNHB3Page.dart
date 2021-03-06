import 'dart:math';
import 'package:catex/catex.dart';
import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class NoTSLNNNHB3Page extends StatefulWidget {
  @override
  _NoTSLNNNHB3PageState createState() => _NoTSLNNNHB3PageState();
}

List listAnswer = new List<String>();

class _NoTSLNNNHB3PageState extends State<NoTSLNNNHB3Page> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController mTextEditingController = new TextEditingController();
  TextEditingController nTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String result1 = "";
  String result2 = "";
  String result3 = "";
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

  double ans_delta_cuatu;
  GiaiTDDHS() {
    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);
    int m = int.parse(mTextEditingController.text);
    int n = int.parse(nTextEditingController.text);

    ans_delta_cuatu = 0;
    typeFunction = 0;
    result1 = "";

    //y=(ax^2+bx+c)/(dx+e)
    //đkxd x khac -e/d
    //y_phay=((a*d)*pow(x,2) + 2*a*e*x + (b*e-c*d))/pow((d*x+e),2)

    double max = -1000000;
    double min = 1000000;
    int k = (n - m) * 1000;
    for (int i = k; i >= 0; i--) {
      double f, x;
      x = m + i / 1000;
      f = a * pow(x, 3) + b * pow(x, 2) + c * pow(x, 1) + d;
      if (max < f) max = f;
      if (min > f) min = f;
    }
    result1 = " GTLN của hàm số là $max";
    result2 = " GTNN của hàm số là $min";
  }

  GiaiTDDHS1() {
    td = "Một số bài tập tương tự bài toán của bạn!!!!!";
    db1 = "Bài 1: Tìm GTNN của hàm số y = 1.x^3 - 3.x^2 -9.x + 3 trên [-4;4]";
    da1 = "GTNN của hàm số là -41 và GTLN của hàm số là 40";
    db2 = "Bài 2: Tìm GTNN của hàm số y = 1.x^3 - 3.x + 5 trên [0;2]";
    da2 = "GTNN của hàm số là 3 và GTLN của hàm số là 7";
    db3 = "Bài 3: Tìm GTNN của hàm số y = 1.x^3 - 3.x + 2 trên [-3;3]";
    da3 = "GTNN của hàm số là -16 và GTLN của hàm số là 20";
    db4 = "Bài 4: Tìm GTNN của hàm số y = -2.x^3 + 3.x^2 -5.x + 5 trên [0;5]";
    da4 = "GTNN của hàm số là -195 và GTLN của hàm số là 5";
    db5 = "Bài 5: Tìm GTNN của hàm số y = 1.x^3 - 7.x^2 + 11.x - 2 trên [0;2]";
    da5 = "GTNN của hàm số là -2 và GTLN của hàm số là 3";
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
          title: Text("Tìm GTLN, GTNN của hàm số bậc ba"),
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
                          child: CaTeX(r'\ y = a.x^3 + b.x^2 + c.x + d | [m, n]'),
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
                          leading: Text("m"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: mTextEditingController,
                            decoration: textFieldInputDecoration("Điền m"),
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
                          leading: Text("n"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: nTextEditingController,
                            decoration: textFieldInputDecoration("Điền n"),
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
                          dTextEditingController.text = "";
                          mTextEditingController.text = "";
                          nTextEditingController.text = "";
                        },
                        child: Text("Nhập lại"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Tìm GTLN, GTNN của hàm số y = ax^3 + bx^2 + cx + d trên đoạn [m,n]"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            Text("Đề bài",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Tìm GTLN, GTNN của hàm số y = ${aTextEditingController.text}x^3 + ${bTextEditingController.text}x^2 + ${cTextEditingController.text}x + ${dTextEditingController.text} trên đoạn [${mTextEditingController.text} ; ${nTextEditingController.text} ]."),
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
                            Text(
                              "$db4",
                            ),
                            Text("$da4",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$db5",
                            ),
                            Text("$da5",
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
