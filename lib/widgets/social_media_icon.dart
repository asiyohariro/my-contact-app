import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class SocialMediaIcon extends StatelessWidget {
     // ignore: non_constant_identifier_names
     String Platfrom;
  Uri url;
  SocialMediaIcon({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.Platfrom,
    required this.url,
     
  }): super( key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        child: CircleAvatar(
                      backgroundImage: AssetImage('assets/$Platfrom'),
                      radius: 50,
                    ),
                    onTap: () {
                      launchUrl(url, mode: LaunchMode.externalApplication);
                    },
      ),
    );
  }
}

