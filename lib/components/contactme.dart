import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Contact Me',
          style: GoogleFonts.firaCode(
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        launchUrl(
                          Uri(
                            scheme: 'mailto',
                            path: 'dshah2805@gmail.com',
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.github,
                      ),
                      onPressed: () {
                        launchUrl(
                          Uri.parse(
                            'https://github.com/devansh2805',
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.indigo,
                      ),
                      onPressed: () {
                        launchUrl(
                          Uri.parse(
                            'https://www.linkedin.com/in/devansh-shah28',
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        launchUrl(
                          Uri.parse(
                            'https://twitter.com/devansh2805',
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Made with ❤ by Devansh Shah',
              style: GoogleFonts.firaCode(),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '© Copyright 2022',
              style: GoogleFonts.firaCode(),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        )
      ],
    );
  }
}
