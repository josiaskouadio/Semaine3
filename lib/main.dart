import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: pageAccueil(),
    );
  }
}

class pageAccueil extends StatelessWidget {
  const pageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Magazine Infos'),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/images/magazineInfo.jpg'),
            fit: BoxFit.fill,
          ),
          PartieTitre(),
          PartieTexte(),
          PartieIcone(),
          PartieRubrique(),
        ],
      ),
    );
  }
}

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Bienvenue au Magazine Infos",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          Text(
            "Votre magazine numerique, votre source d\'inspiration",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        "Magazine Infos est bien plus qu\'un simple magazine d\'informations. C'est votre passerelle vers le monde, une source inestimable de connaissances et d\'actualités soigneusement sélectionnées pour vous éclairer sur les enjeux mondiaux, la culture, la science, la, et voir même le divertissement (le jeux).",
      ),
    );
  }
}

class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(Icons.phone, color: Colors.pink),
                SizedBox(height: 5),
                Text("Tel".toUpperCase(), style: TextStyle(color: Colors.pink)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(Icons.email, color: Colors.pink),
                SizedBox(height: 5),
                Text(
                  "Mail".toUpperCase(),
                  style: TextStyle(color: Colors.pink),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(Icons.share, color: Colors.pink),
                SizedBox(height: 5),
                Text(
                  "Partager".toUpperCase(),
                  style: TextStyle(color: Colors.pink),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(image: AssetImage('assets/images/image1.jpg')),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(image: AssetImage('assets/images/image2.jpg')),
          ),
        ],
      ),
    );
  }
}
