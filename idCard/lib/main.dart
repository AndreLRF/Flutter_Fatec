import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

//Criamos um widget statefull que representa a tela
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future _launchUrl() async {
    const url = 'https://www.pokemon.com/br/pokedex/pikachu';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Falha ao abrir url: $url';
    }
  }

  Future _launchGit() async {
    const url = 'https://github.com/AndreLRF';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Falha ao abrir url: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text('Pikachu!'),
      ),
      //Body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://d17lbu6bbzbdc8.cloudfront.net/wp-content/uploads/2020/06/10214056/Ash-Pikachu.jpg'),
              radius: 90),
          //     FlatButton(
          //       onPressed: () {},
          //       child: Text("FlatButton"),
          //     ),
          //     FlatButton.icon(
          //         onPressed: () {},
          //         icon: Icon(Icons.add),
          //         label: Text("FlatButtonIcon")),
          //     RaisedButton(
          //       onPressed: () {},
          //       child: Text("RaiseButton"),
          //     ),
          //     RaisedButton.icon(
          //         onPressed: () {},
          //         icon: Icon(Icons.mobile_screen_share),
          //         label: Text("FlatButtonIcon")),
          //     IconButton(
          //       icon: Icon(Icons.mic_none),
          //       onPressed: () {},
          //     )
          Text(
            'Pikachu',
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 75,
              vertical: 20,
            ),
            child: Divider(
              color: Colors.red,
              height: 5,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://icons-for-free.com/iconfiles/png/512/pokebola+pokemon+pokemongo+icon-1320190500287183371.png'),
                  radius: 15),
              title: Text(
                'linkedin/pikachu',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                _launchUrl();
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://banner2.cleanpng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg'),
                  radius: 15),
              title: Text(
                'Github/AndreLRF',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                _launchGit();
              },
            ),
          )
        ],
      ),
      // //FAB
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
