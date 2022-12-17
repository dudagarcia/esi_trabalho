import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esi_tattoo/constants.dart';
import 'details.dart';

class Curso extends StatefulWidget {
  const Curso({super.key});

  @override
  State<Curso> createState() => _CursoState();
}

class _CursoState extends State<Curso> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.black,
     body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPaddin,
                  vertical: kDefaultPaddin,
                ),
                child: Text(
                  "Módulos Dos Cursos",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(24.0),
                child: TattooList(),
              ),
            ],
          ),
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
      "title": "Introdução A Tatuagem",
      "name": "Professor Gustavo Medici",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR5LiRjlZN4yEeLzYHq3JsjSQumlViZIzddw&usqp=CAU"
    },
    {
      "title": "Como Fazer Os Primeiros Traços",
      "name": "Professor Kleber Sangalo",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD_E6C0rWgbHBschqOSiX_CIqgXvT4SDI76w&usqp=CAU"
    },
    {
      "title": "Tatuagem Preto E Branco",
      "name": "Professor Gustavo Medici",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqk49WkMVqS4erifkqpEt2CDaLz3ljv0wkOg&usqp=CAU"
    },
    {
      "title": "Tatuagem Colorida ",
      "name": "Professor Kleber Sangalo",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNaNab4aq2wlWHUklAJjrhUxZ5plZFFuYczw&usqp=CAU"
    },
    {
      "title": "Traços Finos",
      "name": "Professor Gustavo Medici",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSB18Tgkb0Te7ZS0DMQ1kaByw7SrUi4Axzbg&usqp=CAU"
    },
    {
      "title": "Traços Grossos",
      "name": "Professor Kleber Sangalo",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB6y6ZQZ7CnXtWv-RYNHNDhVLFD_ggNqHO3g&usqp=CAU"
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