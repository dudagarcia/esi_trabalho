import 'package:flutter/material.dart';

class TatuadorScreen extends StatefulWidget {
  const TatuadorScreen({super.key});

  @override
  State<TatuadorScreen> createState() => _TatuadorScreenState();
}

class _TatuadorScreenState extends State<TatuadorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        margin: EdgeInsets.all(24.0),
        decoration: BoxDecoration(
         // color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Insira Seus Dados Para Cadastro',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Nome Completo:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Gustavo Medici',
                labelText: 'Nome Completo',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'CPF: ',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'XXX.XXX.XXX-XX',
                labelText: 'CPF',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Data De Nascimento: ',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'XX/XX/XXXX',
                labelText: 'Data De Nascimento',
                border: OutlineInputBorder(),
              ),
            ),
              SizedBox(
              height: 5,
            ),
            Text(
              'Endereço Do Estúdio:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Av XPTO, 123',
                labelText: 'Endereço Do Estúdio',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(70, 50),
                      backgroundColor: Colors.orange,
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    child: Text('SALVAR DADOS')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
