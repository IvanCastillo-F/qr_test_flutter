import 'package:flutter/material.dart';
import 'package:test_app/pages/scan.dart';

class myHome extends StatelessWidget{

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
            child:ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Image.network('https://m.media-amazon.com/images/S/abs-image-upload-na/f/AmazonStores/A1RKKUPIHCS9HS/60453d39d1430bca7537512bb51eaf43.w400.h400.png',
                        width: 75,
                        height: 75,),
                      ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const QRViewExample(),
              ));
            },
          ),
          ]
        ),
      ),
    );
  }
}
