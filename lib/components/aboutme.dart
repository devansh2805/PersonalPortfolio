import 'package:flutter/material.dart';
import 'package:portfolio_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox(
          width: Utils.isMobile(context)
              ? Utils.mdqw(context)
              : Utils.mdqw(context) / 2,
          height: Utils.isMobile(context)
              ? Utils.mdqh(context) / 2
              : Utils.mdqh(context) - 320,
          child: Padding(
            padding: Utils.isMobile(context)
                ? const EdgeInsets.all(5.0)
                : const EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/aboutcartoon.png',
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(
          width: Utils.isMobile(context)
              ? Utils.mdqw(context)
              : Utils.mdqw(context) / 2,
          height: Utils.isMobile(context)
              ? Utils.mdqh(context) / 2
              : Utils.mdqh(context) - 320,
          child: Center(
            child: SizedBox(
              height: Utils.isMobile(context)
                  ? 200 / (Utils.mdqw(context) * 0.0025)
                  : 180,
              width: Utils.isMobile(context) ? Utils.mdqw(context) * 0.85 : 380,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      spreadRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Hello Folks! \nI\'m Devansh Shah',
                        style: GoogleFonts.firaCode(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'A passionate Computer Engineer who loves exploring any technology. Currently I work at Microsoft IGD as an Associate Consultant',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
