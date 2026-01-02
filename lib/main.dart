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
        title: const Text('Magazine Infos',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.white,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.white,)),
        ],
      ),
      body: Center(
        child: Image(image: AssetImage('assets/images/magazineInfo.jpg'),
        fit: BoxFit.fill,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Tu as cliqué dessus'),
            ),
          );
        },
        child: Text("Click",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16, ),),
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}