import 'package:esi_tattoo/constants.dart';
import 'package:esi_tattoo/models/product.dart';
import 'package:flutter/material.dart';
import 'add_to_cart.dart';
import 'cores_e_tamanho.dart';
import 'counter_with_fav_icone.dart';
import 'description.dart';
import 'produc_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                     // CoresAndTamanho(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                     // Description(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      //CounterWithFavIcone(),
                      SizedBox(height: kDefaultPaddin / 2),
                      //AddToCart(product: product),
                    ],
                  ),
                ),
               // ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
