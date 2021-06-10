import 'package:flutter/material.dart';
import 'package:sneaker_app/model/shoes_model.dart';
import 'package:sneaker_app/screen/detail_screen.dart';
import 'package:sneaker_app/themes/theme.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: primary,
        centerTitle: true,
        title: Text(
          'Sneaker App',
          style: titleshoesmain,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final ShoesModel place = shoesdmodelList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  place: place,
                );
              }));
            },
            child: Container(
              color: grey,
              padding: EdgeInsets.all(8),
              child: Card(
                shadowColor: Colors.black,
                elevation: 1,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Hero(
                      tag: shoesdmodelList[index].shoesName,
                      child: Image.asset(place.imageAsset,
                          fit: BoxFit.fitWidth,
                          height: 150,
                          width: double.maxFinite,
                          color: Color.fromRGBO(42, 40, 89, 0.5),
                          colorBlendMode: BlendMode.hardLight),
                    ),
                    Center(child: Text(place.shoesName, style: titleshoesmain)),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: shoesdmodelList.length,
      ),
    );
  }
}
