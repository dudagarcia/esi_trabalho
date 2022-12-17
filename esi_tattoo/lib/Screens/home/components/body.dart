import 'package:esi_tattoo/Screens/details/details_screen.dart';
import 'package:esi_tattoo/Screens/home/components/button_tatuador.dart';
import 'package:esi_tattoo/Screens/home/components/details.dart';
import 'package:esi_tattoo/Screens/home/components/tatuador.dart';
import 'package:esi_tattoo/Screens/home/components/url_links.dart';
import 'package:esi_tattoo/constants.dart';
import 'package:esi_tattoo/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
//import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPaddin,
              ),
              child: Text(
                "Tatuagens",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),

            Categories(),
            // Urllinks(),
            TatuadorButton(),

            const Padding(
              padding: const EdgeInsets.all(24.0),
              child: TattooList(),
            ),
          ],
        ),
      ),
    );
  }
}

class TattooList extends StatefulWidget {
  const TattooList({super.key});

  @override
  State<TattooList> createState() => _TattooListState();
}

class _TattooListState extends State<TattooList> {
  //@override
  // Widget build(BuildContext context) {   return Container();}
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Astronauta",
      "name": "Gustavo Medici",
      "adress": "Endereço Rua Augusta, N°123",
      "price": "R\$350,00",
      "alt": "12cm",
      "images":
          "https://images-platform.99static.com/Z9K0bJPDw4PsN_82uw7opKAvoJM=/0x0:2040x2040/500x500/top/smart/99designs-contests-attachments/112/112257/attachment_112257953"
    },
    {
      "title": "Bússola",
      "name": "Kleber Sangalo",
      "adress": "Endereço Rua Augusta, N°123",
      "price": "R\$245,00",
      "alt": "15cm",
      "images":
          "https://images-platform.99static.com/EzXWDZd0dgch4I4u1S2t5Kc1NrA=/0x0:1200x1200/500x500/top/smart/99designs-contests-attachments/111/111652/attachment_111652729"
    },
    {
      "title": "Rosa",
      "name": "Gustavo Medici",
      "adress": "Endereço Rua Augusta, N°123",
      "price": "R\$460,00",
      "alt": "14cm",
      "images":
          "https://i0.wp.com/followthecolours.com.br/wp-content/uploads/2015/07/follow-the-colours-tattoo-East-fineline-20-e1437089801351.png?fit=620%2C399&ssl=1"
    },
    {
      "title": "Eclipse",
      "name": "Gustavo Medici",
      "adress": "Endereço Rua Augusta, N°123",
      "price": "R\$200,00",
      "alt": "7cm",
      "images":
          "https://images-platform.99static.com/gVAMUYWSmksKZM16NAj1T7SjGC8=/0x177:1536x1713/500x500/top/smart/99designs-contests-attachments/127/127114/attachment_127114701"
    },
    {
      "title": "Bússola com flores",
      "name": "Kleber Sangalo",
      "adress": "Endereço Rua Augusta, N°123",
      "price": "R\$750,00",
      "alt": "22cm",
      "images":
          "https://images-platform.99static.com/P6pPoTNW7xsug1JFUXpxrDpmVqU=/0x0:1000x1000/500x500/top/smart/99designs-contests-attachments/115/115383/attachment_115383443"
    },
    {
      "title": "Roses and Heart",
      "name": "Gustavo Medici",
      "adress": "Endereço Rua Augusta, N°123",
      "price": "R\$370,00",
      "alt": "8cm",
      "images":
          "https://images-platform.99static.com/5ZrRho8BJtgGFEhKtDh6dhcE-M4=/500x500/top/smart/99designs-contests-attachments/17/17350/attachment_17350224"
    },
    {
      "title": "Anjos com águias",
      "name": "Kleber Sangalo",
      "adress": "Endereço Rua Augusta, N°123",
      "price": "R\$1.100,00",
      "alt": "33cm",
      "images":
          "https://99designs-blog.imgix.net/blog/wp-content/uploads/2015/08/tattoo_styles.jpg?auto=format&q=60&fit=max&w=930"
    },
    {
      "title": "Tribal",
      "price": "R\$1.450,00",
      "alt": "50cm",
      "images":
          "https://images-platform.99static.com/M46dQu6g_Vck63v8Mv9szM3vPGo=/0x0:2000x2000/500x500/top/smart/99designs-contests-attachments/96/96967/attachment_96967013"
    },
    {
      "title": "Mask",
      "name": "Kleber Sangalo",
      "adress": "Endereço Rua Augusta, N°123",
      "price": "R\$345,00",
      "alt": "13cm",
      "images":
          "https://images-platform.99static.com/OhF8QSrlSrYI5kZr7gFApo8eESE=/100x350:923x1173/500x500/top/smart/99designs-contests-attachments/104/104428/attachment_104428742"
    },
    {
      "title": "Bússola com âncora",
      "price": "R\$1.200,00",
      "alt": "40cm",
      "images":
          "https://images-platform.99static.com/bLyOzmtX6TCI_EoVsdQW2_kTWqQ=/211x14:1301x1104/500x500/top/smart/99designs-contests-attachments/107/107997/attachment_107997788"
    },
    {
      "title": "Elefante com flores",
      "price": "R\$3.000,00",
      "alt": "50cm",
      "images":
          "https://images-platform.99static.com/8cqaLMXjsE81oas3QioHyOw9tNo=/0x0:2000x2000/500x500/top/smart/99designs-contests-attachments/120/120606/attachment_120606048"
    },
    {
      "title": "Poseidon",
      "price": "R\$2.500,00",
      "alt": "37cm",
      "images":
          "https://images-platform.99static.com/r11WCtKUE1OWj7eGzG6kaCW5Vpw=/0x3569:2040x5609/500x500/top/smart/99designs-contests-attachments/86/86082/attachment_86082669"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 400,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details(foto: gridMap[index]),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.grey.shade900,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)),
                  child: Image.network(
                    "${gridMap.elementAt(index)['images']}",
                    height: 190,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${gridMap.elementAt(index)['title']}",
                        style: Theme.of(context).textTheme.subtitle1!.merge(
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "${gridMap.elementAt(index)['price']}",
                        style: Theme.of(context).textTheme.subtitle2!.merge(
                              TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                              ),
                            ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "${gridMap.elementAt(index)['alt']}",
                        style: Theme.of(context).textTheme.subtitle2!.merge(
                              TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                              ),
                            ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.heart,
                            ),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.cart,
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/*  Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: gridMap.lenght,
              ),
 /*
   
           

            /*GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 300,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.amber,
                    child: Center(child: Text('$index')),
                  );
                }),
                */

                 */GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index],
                    ),
                  ),
                ),
              ),
            ),
            */
            