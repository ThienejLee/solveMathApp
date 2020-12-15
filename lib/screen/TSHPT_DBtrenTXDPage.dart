import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solveMathApp/widgets/widget.dart';

class TSHPT_DBTTXDPage extends StatefulWidget {
  @override
  _TSHPT_DBTTXDPageState createState() => _TSHPT_DBTTXDPageState();
}

List listAnswer = new List<String>();

class _TSHPT_DBTTXDPageState extends State<TSHPT_DBTTXDPage> {
  TextEditingController aTextEditingController = new TextEditingController();
  TextEditingController bTextEditingController = new TextEditingController();
  TextEditingController cTextEditingController = new TextEditingController();
  TextEditingController dTextEditingController = new TextEditingController();
  TextEditingController fTextEditingController = new TextEditingController();
  TextEditingController eTextEditingController = new TextEditingController();
  TextEditingController gTextEditingController = new TextEditingController();
  TextEditingController hTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  int typeFunction = -1;
  String _result1 = "";
  String _result2 = "";
  String result1 = "";
  String result2 = "";
  String result3 = "";
  String result4 = "";
  String result5 = "";
  String result6 = "";
  String result7 = "";
  String result8 = "";
  String result9 = "";
  String result10 = "";
  String result111 = "";
  String result112 = "";
  String result113 = "";
  String result114 = "";
  String result115 = "";
  String result116 = "";
  String result117 = "";
  String result118 = "";
  String result119 = "";
  String result1110 = "";

  GiaiTDDHS() {
    double a = double.parse(aTextEditingController.text);
    double b = double.parse(bTextEditingController.text);
    double c = double.parse(cTextEditingController.text);
    double d = double.parse(dTextEditingController.text);
    double f = double.parse(fTextEditingController.text);
    double e = double.parse(eTextEditingController.text);
    double g = double.parse(gTextEditingController.text);
    double h = double.parse(hTextEditingController.text);

    typeFunction = 0;
    double A = a * g - e * c;
    double B = a * h + b * g - e * d - f * c;
    double C = b * h - f * d;
    if (A == 0) {
      if (B == 0) if (C <= 0)
        _result1 = "Không có giá trị m thoả";
      else
        _result1 = "Với mọi giá trị m";
      if (B > 0)
        _result1 = "Gía trị m thuộc (${-C / B} ; +oo).";
      else
        _result1 = "Giá trị của m thuộc (-oo; ${-C / B})";
    } else {
      double delta = B * B - 4 * A * C;
      if (A < 0) {
        if (delta <= 0) result1 = "Không có giá trị m thoả";
        if (delta > 0) {
          double x1 = (-B - sqrt(delta)) / (2 * A);
          double x2 = (-B + sqrt(delta)) / (2 * A);
          _result1 = "Giá trị của m thuộc ($x1 ; $x2 )";
        }
      }
      if (A > 0) {
        double x0 = -B / (2 * A);
        if (delta < 0) _result1 = "Mọi giá trị m thuộc R";
        if (delta == 0) _result1 = "Mọi giá trị m khác $x0 ";
        if (delta > 0) {
          double x1 = (-B + sqrt(delta)) / (2 * A);
          double x2 = (-B - sqrt(delta)) / (2 * A);
          _result1 = "Giá trị của m thuộc (-oo ; $x1) U ($x2 ; +oo )";
        }
      }
    }
  }

  GiaiTDDHS1() {
    typeFunction = 0;
    _result2 = "Một số bài toán tương tự";
    int dem = 0;
    for (int a = 1; a <= 10; a++)
      for (int b = 1; b <= 10; b++)
        for (int c = -10; c <= 10; c++)
          for (int d = -10; d <= 10; d++)
            for (int e = 1; e <= 10; e++)
              for (int f = 1; f <= 10; f++)
                for (int g = 1; g <= 10; g++)
                  for (int h = 1; h <= 10; h++) {
                    int A = a * g - e * c;
                    int B = a * h + b * g - e * d - f * c;
                    int C = b * h - f * d;
                    int delta = B * B - 4 * A * C;
                    if (delta > 0) {
                      double x1 = (-B + sqrt(delta)) / (2 * A);
                      double x2 = (-B - sqrt(delta)) / (2 * A);
                      int kta = 0;
                      int ktb = 0;
                      for (int x = -100; x <= 100; x++)
                        if (x1 == x) {
                          kta = 1;
                          break;
                        }
                      for (int x = -100; x <= 100; x++)
                        if (x2 == x) {
                          ktb = 1;
                          break;
                        }
                      if ((kta == 1) && (ktb == 1)) {
                        dem = dem + 1;
                        switch (dem) {
                          case 1:
                            result111 =
                                "Bài 1: Tìm m để hàm số y = (($a.m + $b)x + $c.m + $d)/(($e.m + $f)x +$g.m +$h) đồng biến trên từng khoảng xác định";
                            if (A < 0)
                              result1 = "Giá trị của m thuộc ( $x1 ; $x2 )";
                            else if (A > 0)
                              result1 =
                                  "Giá trị của m thuộc (-oo ; $x1) U ($x2 ; +oo )";
                            break;
                          case 2:
                            result112 =
                                "Bài 1: Tìm m để hàm số y = (($a.m + $b)x + $c.m + $d)/(($e.m + $f)x +$g.m +$h) đồng biến trên từng khoảng xác định";
                            if (A < 0)
                              result2 = "Giá trị của m thuộc ( $x1 ; $x2 )";
                            else if (A > 0)
                              result2 =
                                  "Giá trị của m thuộc (-oo ; $x1) U ($x2 ; +oo )";
                            break;
                          case 3:
                            result113 =
                                "Bài 1: Tìm m để hàm số y = (($a.m + $b)x + $c.m + $d)/(($e.m + $f)x +$g.m +$h) đồng biến trên từng khoảng xác định";
                            if (A < 0)
                              result3 = "Giá trị của m thuộc ( $x1 ; $x2 )";
                            else if (A > 0)
                              result3 =
                                  "Giá trị của m thuộc (-oo ; $x1) U ($x2 ; +oo )";
                            break;
                          case 4:
                            result114 =
                                "Bài 1: Tìm m để hàm số y = (($a.m + $b)x + $c.m + $d)/(($e.m + $f)x +$g.m +$h) đồng biến trên từng khoảng xác định";
                            if (A < 0)
                              result4 = "Giá trị của m thuộc ( $x1 ; $x2 )";
                            else if (A > 0)
                              result4 =
                                  "Giá trị của m thuộc (-oo ; $x1) U ($x2 ; +oo )";
                            break;
                          case 5:
                            result115 =
                                "Bài 1: Tìm m để hàm số y = (($a.m + $b)x + $c.m + $d)/(($e.m + $f)x +$g.m +$h) đồng biến trên từng khoảng xác định";
                            if (A < 0)
                              result5 = "Giá trị của m thuộc ( $x1 ; $x2 )";
                            else if (A > 0)
                              result5 =
                                  "Giá trị của m thuộc (-oo ; $x1) U ($x2 ; +oo )";
                            break;
                        }
                      }
                    }
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
          title: Text(
              "Tìm m để hàm số phân thức đồng biến trên từng khoảng xác định"),
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
                        ListTile(
                          leading: Text("G"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: gTextEditingController,
                            decoration: textFieldInputDecoration("Điền G"),
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
                          leading: Text("H"),
                          title: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: hTextEditingController,
                            decoration: textFieldInputDecoration("Điền H"),
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
                          fTextEditingController.text = "";
                          eTextEditingController.text = "";
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  ),
                  // type Function
                  Text("Dang toán:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Tìm m để hàm số y = ((am+b)x +(cm+d))/((em+f)x+gm+h) đồng biến trên từng khoảng xác định"),
                  typeFunction != -1
                      ? Column(
                          children: [
                            // Text("Delta' $answerDelta_phay"),
                            Text(
                              "Đề bài",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "Tìm m để hàm số: y = (( ${aTextEditingController.text}m+${bTextEditingController.text})x +${cTextEditingController.text} m+${dTextEditingController.text})/((${eTextEditingController.text}m+${fTextEditingController.text})x+${gTextEditingController.text}m+${hTextEditingController.text}) đồng biến trên từng khoảng xác định"),

                            Text(
                              "Đáp án: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("$_result1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("$_result2",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result111",
                            ),
                            Text("$result1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result112",
                            ),
                            Text("$result2",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result113",
                            ),
                            Text("$result3",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result114",
                            ),
                            Text("$result4",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "$result115",
                            ),
                            Text("$result5",
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
