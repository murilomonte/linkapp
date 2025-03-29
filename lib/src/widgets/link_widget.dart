import 'package:flutter/material.dart';

class LinkWidget extends StatefulWidget {
  final String _name;
  final String _desc;

  const LinkWidget({super.key, required name, required desc})
    : _name = name,
      _desc = desc;

  @override
  State<LinkWidget> createState() => _LinkWidgetState();
}

class _LinkWidgetState extends State<LinkWidget> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          _hovered = value;
        });
      },
      child: AnimatedContainer(
        // Funciona como um container normal, mas com plus de ter o controle de duração e curva das mudanças do filho
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: _hovered ? Color.fromARGB(255, 41, 41, 41) : Color(0xFF242424),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: _hovered ? const Color(0xFF2A82FA) : Colors.transparent,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Row(
            spacing: 15,
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 51, 51, 51),
                child: Icon(Icons.home),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget._name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.visible,
                    ),
                    Text(
                      widget._desc,
                      overflow: TextOverflow.visible,
                      softWrap: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
