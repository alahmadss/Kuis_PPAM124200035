import 'package:flutter/material.dart';
import 'package:kuis/groceries.dart';
import 'package:kuis/detailPage.dart';

class GrocerPlatform extends StatelessWidget {
  // const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final Groceries grocer = groceryList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailGrocer(grocer: grocer);
              }));
            },
            splashColor: Color(0xff7cff35),
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Image.network(
                      grocer.productImageUrls[0],
                      width: 300,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      grocer.name,
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      grocer.storeName,
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: groceryList.length,
      ),
    );
  }
}
