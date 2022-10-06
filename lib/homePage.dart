// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuis/beranda.dart';

class Home extends StatefulWidget {
  // HomePage({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int index;
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  final List<Widget> _pages = [
    GrocerPlatform(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff72ff13),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "LokaPasar",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        elevation: 0,
        // brightness: Brightness.light,
        backgroundColor: Color(0x6b2d2d),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.arrow_back_ios,
        //     size: 20,
        //     color: Colors.black,),
        //
        //
        // ),
      ),
      body: _pages[index],
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Color(0xffb84d4d),
      //   onTap: (value) {
      //     setState(() {
      //       index = value;
      //     });
      //   },
      //   items: [
      //     Icon(Icons.home),
      //     // Icon(Icons.info_outline_rounded),
      //   ],
      // ),
    );
  }
}

// we will be creating a widget for text field
// Widget inputFile({label, obscureText = false}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(
//         label,
//         style: TextStyle(
//             fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
//       ),
//       SizedBox(
//         height: 5,
//       ),
//       TextField(
//         obscureText: obscureText,
//         decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.grey[400]),
//             ),
//             border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey[400]))),
//       ),
//       SizedBox(
//         height: 10,
//       )
//     ],
//   );
// }
