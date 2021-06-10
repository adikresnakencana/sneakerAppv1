import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sneaker_app/model/shoes_model.dart';
import 'package:sneaker_app/themes/theme.dart';


class DetailScreen extends StatelessWidget {
  final ShoesModel place;
  bool _validate = false;
  final _text = TextEditingController();
  DetailScreen({@required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ]),
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        place.imageAsset,
                        fit: BoxFit.fill,
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Hero(
                        tag: place.shoesName,
                        child: Image.asset(
                          place.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: primary,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Image.asset(
                    'images/nikelogo.png',
                    width: 70,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Text(
                place.shoesName,
                style: titleshoes,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                place.shoesPrice,
                style: titleharga,
              ),
              SizedBox(height: 35),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Text(
                  place.deskripsi,
                  style: deskripsi,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 0.5,
                              blurRadius: 1,
                              color: black.withOpacity(0.1))
                        ],
                      ),
                      child: FavoriteButton(),
                    ),
                    SizedBox(width: 15),
                    Flexible(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: primary,
                        onPressed: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.INFO,
                            animType: AnimType.BOTTOMSLIDE,
                            title:
                                'Are you sure you want to buy ${place.shoesName}',
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.SUCCES,
                                animType: AnimType.BOTTOMSLIDE,
                                title: 'Thanks For Buy',
                              )..show();
                            },
                          )..show();
                        },
                        child: Container(
                          height: 50,
                          child: Center(
                            child: Text(
                              "Buy Now",
                              style: addtocart,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        });
  }
}
