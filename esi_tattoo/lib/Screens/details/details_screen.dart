import 'package:esi_tattoo/constants.dart';
import 'package:esi_tattoo/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:esi_tattoo/Screens/details/components/body.dart';
//import 'package:easy_tattoo/Screens/home/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cada produto/tatuagem tem uma cor específica
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/IconeVoltar.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context)),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/Search.svg'),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/carrinho.svg'),
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPaddin / 2,
        ),
      ],
    );
  }
}
