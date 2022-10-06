import 'package:flutter/material.dart';
import 'package:kuis/groceries.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailGrocer extends StatefulWidget {
  const DetailGrocer({key, required this.grocer}) : super(key: key);

  final Groceries grocer;

  @override
  State<DetailGrocer> createState() => _DetailGrocerState();
}

class _DetailGrocerState extends State<DetailGrocer> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3c7214),
        title: Text("${widget.grocer.name}"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: (isFavorite)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height) / 3,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: widget.grocer.productImageUrls.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 5.0,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      widget.grocer.productImageUrls[index],
                      width: 200,
                      height: 210,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xff438c16),
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.grocer.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.grocer.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Deskripsi Produk : ${widget.grocer.description}",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Nama Toko : ${widget.grocer.storeName}",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Harga : ${widget.grocer.price}",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Stok : ${widget.grocer.stock}",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Text(
                        "Diskon : ${widget.grocer.discount}",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    child: Text("Cek Produk"),
                    onPressed: () => launch('${widget.grocer.productUrl}')
                    ,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Rating Produk",
                    style: TextStyle(
                        color: Color(0xffb84d4d),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${widget.grocer.reviewAverage}",
                    style: TextStyle(
                        color: Color(0xffb84d4d),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  void _LaunchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  launch(url) {}
}
