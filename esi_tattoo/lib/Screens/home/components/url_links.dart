import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Urllinks extends StatelessWidget {
  Future<void> _launchLik(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      print('Não pode executar o link $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(100, 60), backgroundColor: Colors.orange,
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      child: Text('Entrar Em Contato'),
       onPressed: () => _launchLik('https://www.instagram.com/gustavomedicii/'),
    );
  }
}
/*icon: Icon(
        Icons.phone_iphone,
        color: Colors.orange,
      ),
      label: Text(
        'Enviar Mensagem',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
      onPressed: () => _launchLik('https://www.instagram.com/gustavomedicii/'),
      */