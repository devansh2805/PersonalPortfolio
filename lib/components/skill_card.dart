import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils.dart';

class SkillCard extends StatelessWidget {
  final String url;
  final String skill;
  const SkillCard({Key? key, required this.url, required this.skill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFC4ACA1),
                  blurRadius: 6,
                  spreadRadius: 4,
                )
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: SizedBox(
              height: Utils.isMobile(context) ? Utils.mdqw(context) / 3 : 150,
              width: Utils.isMobile(context) ? Utils.mdqw(context) / 3 : 150,
              child: Padding(
                padding: Utils.isMobile(context)
                    ? const EdgeInsets.all(8.0)
                    : const EdgeInsets.all(20.0),
                child: Image.asset(url),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            skill,
            style: GoogleFonts.lato(),
          )
        ],
      ),
    );
  }
}
