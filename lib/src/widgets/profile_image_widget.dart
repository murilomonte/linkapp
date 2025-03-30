import 'package:flutter/material.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (value) {
        setState(() {
          _hovered = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: _hovered ? Theme.of(context).colorScheme.primary : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(_hovered ? 20 : 10),
          image: DecorationImage(
            image: AssetImage('../assets/images/profile.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        curve: Curves.easeInOut,
        width: 120,
        height: 120,
      ),
    );
  }
}
