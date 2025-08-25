import 'package:flutter/material.dart';

void main() {
  runApp(MonAppli());
}

// 1er Widget : MonAppli
class MonAppli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine', //Titre de l'application
      debugShowCheckedModeBanner: false,
      home: PageAccueil(),
    );
  }
}

// 2e Widget : PageAccueil
class PageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazine Infos'), //Titre de la page
        centerTitle: true, //Centré
        backgroundColor: const Color.fromARGB(255, 183, 58, 102), // Exemple de couleur
       //Définition des icônes
       //Icône de menu dont les actions ne sont pas encore planifiées
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Action future
          },
        ),
        actions: [
         //Icône de menu dont les actions ne sont pas encore planifiées
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Action future
            },
          ),
        ],
      ),



body: const SingleChildScrollView(
  child: Column(
    children: [
      // Image principale du magazine
      Image(image: AssetImage('assets/images/Accueil.jpg')),

      // Widget affichant le titre de l'application
      PartieTitre(),

      // Widget affichant un paragraphe descriptif
      PartieTexte(),

      // Widget affichant les icônes (téléphone, mail, partage)
      PartieIcone(),

      // Widget affichant deux images côte à côte
      PartieRubrique(),
    ],
  ),
),


      // Bouton flottant
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Affiche un message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Tu as cliqué dessus')),
          );
        },
        backgroundColor: const Color.fromARGB(255, 58, 139, 183),
        child: const Text('Click'),
      ),
    );
  }
}

// Widget qui affiche un titre principal et un sous-titre
class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20), // Espacement intérieur
      width: double.infinity, // Largeur maximale (toute la largeur disponible)
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligné à gauche
        children: [
          Text(
            'Bienvenue au Magazine Infos',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            "Votre magazine numérique, votre source d'inspiration",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

// Widget qui affiche un texte de présentation du magazine
class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
        "Magazine Info est bien plus qu'un simple magazine d'informations. C'est votre passerelle vers le monde, une source inestimable de connaissances et d'actualité soigneusement sélectionnées pour vous éclairer sur les enjeux mondiaux, la culture, la science, et voir même le divertissement (le jeux).",
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}

// Widget qui affiche 3 icônes horizontales (TEL, MAIL, PARTAGE)
class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          IconWithLabel(icon: Icons.phone, label: 'TEL'),
          IconWithLabel(icon: Icons.email, label: 'MAIL'),
          IconWithLabel(icon: Icons.share, label: 'PARTAGE'),
        ],
      ),
    );
  }
}

// Widget réutilisable pour chaque icône avec son libellé
class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconWithLabel({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.pink),
        SizedBox(height: 5),
        Text(label, style: TextStyle(color: Colors.pink)),
      ],
    );
  }
}

// Widget qui affiche deux images côte à côte avec bords arrondis
class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Première image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/Consult.jpg', width: 150),
          ),
          // Deuxième image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/MagazineInfo.png', width: 150),
          ),
        ],
      ),
    );
  }
}



