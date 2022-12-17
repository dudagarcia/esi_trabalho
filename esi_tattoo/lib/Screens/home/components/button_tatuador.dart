import 'package:esi_tattoo/Screens/home/components/curso.dart';
import 'package:esi_tattoo/Screens/home/components/tatuador.dart';
import 'package:flutter/material.dart';


class TatuadorButton extends StatefulWidget {
  const TatuadorButton({super.key});

  @override
  State<TatuadorButton> createState() => _TatuadorButtonState();
}

class _TatuadorButtonState extends State<TatuadorButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: ()  {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TatuadorScreen(),
              ),
            );
          }, 
          child: Container(
            decoration: BoxDecoration(
              //color: Colors.grey.shade900,
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Text(
                'Quero Ser Um Tatuador',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
           onTap: ()  {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Curso(),
              ),
            );
          }, 
          child: Container(
            decoration: BoxDecoration(
              //color: Colors.grey.shade900,
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Text(
                'Quero Divulgar Meu Trabalho',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
