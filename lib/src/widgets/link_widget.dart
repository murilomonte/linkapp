import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkWidget extends StatefulWidget {
  final String _pathToIcon;
  final String _name;
  final String _desc;
  final String _url;

  const LinkWidget({
    super.key,
    required name,
    required desc,
    required pathToIcon,
    required url,
  }) : _name = name,
       _desc = desc,
       _pathToIcon = pathToIcon,
       _url = url;

  @override
  State<LinkWidget> createState() => _LinkWidgetState();
}

class _LinkWidgetState extends State<LinkWidget> {
  bool _hovered = false;

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(widget._url))) {
      throw Exception('Could not launch ${widget._url}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => _launchUrl(),
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
          color:
              _hovered
                  ? Theme.of(context).colorScheme.onInverseSurface
                  : Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(_hovered ? 20 : 10),
          border: Border.all(
            width: 2,
            color:
                _hovered
                    ? Theme.of(context).colorScheme.primary
                    : Colors.transparent,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Row(
            spacing: 15,
            children: [
              SvgPicture.asset(
                widget._pathToIcon,
                width: 28,
                height: 28,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget._name,
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        height: 1,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.visible,
                    ),
                    Text(
                      widget._desc,
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
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
