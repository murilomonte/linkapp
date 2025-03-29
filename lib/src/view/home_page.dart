import 'package:flutter/material.dart';
import 'package:linkapp/src/widgets/link_widget.dart';
import 'package:linkapp/src/widgets/profile_image_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          constraints: BoxConstraints(maxWidth: 400),
          decoration: BoxDecoration(color: const Color.fromARGB(255, 5, 1, 44)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Wrap(
                    spacing: 20,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      // CircleAvatar(radius: 60, backgroundColor: Colors.purple),
                      ProfileImage(),
                      Text(
                        'Olá!\nEu sou o Murilo',
                        style: TextStyle(fontSize: 20),
                        overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Body
                  // Body -> Pessoal
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Pessoal.', style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(height: 5),

                  // Body -> Pessoal -> Github
                  LinkWidget(
                    name: 'Github',
                    desc: 'Aqui estão os códigos dos meus projetos.',
                  ),
                  SizedBox(height: 10),
                  LinkWidget(
                    name: 'Portfolio (WIP)',
                    desc: 'Meus últimos projetos estão aqui. (WIP)',
                  ),
                  SizedBox(height: 10),

                  // Body -> Outros
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Outros.', style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(height: 5),
                  LinkWidget(
                    name: 'Fotografia',
                    desc: 'Fotos que tiro no tempo livre. :)',
                  ),
                  SizedBox(height: 10),
                  // Footer
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
