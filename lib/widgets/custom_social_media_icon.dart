import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class CustomSocialMediaIcon extends StatefulWidget {
  const CustomSocialMediaIcon({
    Key? key,
    required this.icon,
    required this.color,
    required this.url,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String url;

  @override
  State<CustomSocialMediaIcon> createState() => _CustomSocialMediaIconState();
}

class _CustomSocialMediaIconState extends State<CustomSocialMediaIcon> {
  void callUrl(String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      const SnackBar(content: Text('Não foi possível acessar essa url'));
    }
  }

  bool _onHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {
        callUrl(widget.url);
      },
      child: Icon(
        widget.icon,
        size: 30,
        color: _onHover ? const Color.fromARGB(255, 43, 43, 105) : widget.color,
      ),
      onHover: (value) {
        setState(() {
          _onHover = value;
        });
      },
    );
  }
}
