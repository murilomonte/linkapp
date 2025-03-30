import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkapp/src/controllers/theme_controller.dart';
import 'package:linkapp/src/widgets/footer_message_widget.dart';
import 'package:linkapp/src/widgets/link_widget.dart';
import 'package:linkapp/src/widgets/profile_image_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            constraints: BoxConstraints(maxWidth: 400),
            // decoration: BoxDecoration(color: const Color.fromARGB(255, 5, 1, 44)),
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
                        'Olá!\nEu sou o Murilo.',
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Body
                  // Body -> Pessoal
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Pessoal.',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),

                  // Body -> Pessoal -> Github
                  LinkWidget(
                    pathToIcon: '../assets/icons/github.svg',
                    name: 'Github',
                    desc: 'Aqui estão os códigos dos meus projetos.',
                    url: 'https://github.com/murilomonte',
                  ),
                  SizedBox(height: 10),
                  LinkWidget(
                    pathToIcon: '../assets/icons/link.svg',
                    name: 'Portfolio (WIP)',
                    desc: 'Meus últimos projetos estão aqui. (WIP)',
                    url: 'https://github.com/murilomonte',
                  ),
                  SizedBox(height: 10),

                  // Body -> Outros
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Outros.',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  LinkWidget(
                    pathToIcon: '../assets/icons/instagram.svg',
                    name: 'Fotografia',
                    desc: 'Fotos que tiro no tempo livre. :)',
                    url: 'https://www.instagram.com/lun.witch/',
                  ),
                  SizedBox(height: 10),

                  // Footer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [

                      // Dark/light mode button
                      IconButton(
                        onPressed: () {
                          context.read<ThemeController>().toggleTheme();
                        },
                        icon: Icon(
                          context.read<ThemeController>().isDarkMode
                              ? Icons.light_mode_outlined
                              : Icons.dark_mode_outlined,
                          size: 18,
                          color: Theme.of(context).colorScheme.surfaceDim,
                        ),
                      ),

                      // Rodapé
                      FooterMessage(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

