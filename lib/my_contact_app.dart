
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/social_media_icon.dart';

class MyContactApp extends StatelessWidget {
  MyContactApp({super.key});
  final phoneNumber = Uri.parse('tel:+252907788791');
  // ignore: non_constant_identifier_names
  final Map Platfrom = {
    'whatsapp.png': Uri.parse('https://wa.me/+252907788791'),
    'facebook.png': Uri.parse('https://www.facebook.com/ahlam.cabdi.5'),
    'istgrm.jpg': Uri.parse('https://www.instagram.com/aysa_abdiwahab/'),
    'link.jpg':
        Uri.parse('https://www.linkedin.com/in/ahlam-cabdiwahab-22796218a/'),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 7, 30),
      //appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile2.png'),
                radius: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Asiyo Aabdiwahab',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '+252907788791',
                    style: TextStyle(fontSize: 23, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.phone,
                        size: 30,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                       launchUrl(phoneNumber,);
                      }
                      ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                itemCount: Platfrom.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder:  (context, index) {
                    return ContactChanelCard(
                      Platfrom: Platfrom.keys.toList()[index],
                      url: Platfrom.values.toList()[index],
                     );
                  },
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(8),)
            ],
          ),
        ),
      ),
    );
  }
}
