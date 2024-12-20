import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:GetAmmoutFromUserLayout/SinglePageLayout/widgethelper.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Payment Screen",
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatePaymentScreen();
}

class _StatePaymentScreen extends State<PaymentScreen> {
  final Color backgroundColor = Color(0xff3343fa);
  int newValue = 0;
  String? receiverName = "Neha Rathore";
  String? receiverImageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIrIqFNr87Hp3ejBZpbAkp75dfxO-pm3OmkA&s";

  void InsertValue(int n) {
    if (newValue < 99999999) {
      if (newValue == 0) {
        setState(() {
          newValue = n;
          print("$newValue, $n");
        });
      } else {
        setState(() {
          newValue = newValue * 10 + n;
        });
      }
    }
  }

  void clear() {
    if (newValue != 0) {
      setState(() {
        newValue ~/= 10;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              CupertinoIcons.arrow_left_circle_fill,
              color: Colors.white,
            )),
        title: const Text(
          "Enter Amount",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(
                    Iconsax.dollar_circle_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Text(
                  newValue.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Sending to",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              width: 175,
              decoration: BoxDecoration(
                color: Color(0xff373eb4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.network(
                      receiverImageUrl!,
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                      width: 120,
                      child: Text(
                        receiverName!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              height: 230,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WidgetHelper().CustomButton(
                          onClick: () {
                            InsertValue(1);
                            print("clicked");
                          },
                          text: "1"),
                      WidgetHelper().CustomButton(
                          onClick: () {
                            InsertValue(2);
                          },
                          text: "2"),
                      WidgetHelper().CustomButton(
                          onClick: () {
                            InsertValue(3);
                          },
                          text: "3"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WidgetHelper().CustomButton(
                          onClick: () {
                            InsertValue(4);
                          },
                          text: "4"),
                      WidgetHelper().CustomButton(
                          onClick: () {
                            InsertValue(5);
                          },
                          text: "5"),
                      WidgetHelper().CustomButton(
                          onClick: () {
                            InsertValue(6);
                          },
                          text: "6"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WidgetHelper().CustomButton(
                          onClick: () {
                            InsertValue(7);
                          },
                          text: "7"),
                      WidgetHelper().CustomButton(
                          onClick: () {
                            InsertValue(8);
                          },
                          text: "8"),
                      WidgetHelper().CustomButton(
                          onClick: () {
                            InsertValue(9);
                          },
                          text: "9"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WidgetHelper().CustomButton(
                          onClick: () {
                            InsertValue(0);
                          },
                          text: "0"),
                      InkWell(
                        onTap: () {
                          clear();
                        },
                        onLongPress: () {
                          setState(() {
                            newValue = 0;
                          });
                        },
                        child: const Icon(
                          CupertinoIcons.clear_fill,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //on Click functionality
              },
              child: SizedBox(
                width: 230,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 38,
                    ),
                    Text(
                      "continue",
                      style: TextStyle(
                        fontSize: 20,
                        color: backgroundColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: backgroundColor,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
