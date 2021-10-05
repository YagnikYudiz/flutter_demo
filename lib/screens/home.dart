import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 30.0, bottom: 10.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                        child: Text("Name: ",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w700,
                                color: Colors.white))),
                    Expanded(
                        child: Text("Yagnik Vadgama",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w300,
                                color: Colors.white)))
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                        child: Text("Company: ",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w700,
                                color: Colors.white))),
                    Expanded(
                        child: Text("Yudiz Solutions Private Limited",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w300,
                                color: Colors.white)))
                  ],
                ),
                const YudizImage(), //image
                const AttendanceButton()
              ],
            )));

    // Text("Test App",
    // textDirection: TextDirection.ltr,
    // style: TextStyle(
    //   decoration: TextDecoration.none,
    //   fontSize: 60.0,
    //   fontFamily: 'OpenSans',
    //   fontWeight: FontWeight.w300,
    //   color: Colors.white
    // ))
  }
}

class YudizImage extends StatelessWidget {
  const YudizImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/avatar.png");
    Image image = Image(image: assetImage, width: 250.0, height: 250.0);
    return Container(child: image);
  }
}

class AttendanceButton extends StatelessWidget {
  const AttendanceButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: RaisedButton(
            color: Colors.deepOrangeAccent,
            child: const Text(
              "Check In",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white70,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w300,
              ),
            ),
            onPressed: () => checkIn(context)));
  }

  void checkIn(BuildContext context) {
    var alertDialog = const AlertDialog(
        title: Text("Check In"),
        content: Text("You have checked in successfully"));

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
