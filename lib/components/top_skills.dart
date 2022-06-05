import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components/skill_card.dart';
import 'package:portfolio_app/utils.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Skills',
          style: GoogleFonts.firaCode(
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal:
                Utils.isMobile(context) ? 80.0 : Utils.mdqw(context) / 12,
          ),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: const [
              SkillCard(
                url: 'assets/images/flutter.png',
                skill: 'Flutter',
              ),
              SkillCard(
                url: 'assets/images/java.png',
                skill: 'Java',
              ),
              SkillCard(
                url: 'assets/images/python.png',
                skill: 'Python',
              ),
              SkillCard(
                url: 'assets/images/c.png',
                skill: 'C',
              ),
              SkillCard(
                url: 'assets/images/windows.png',
                skill: 'Windows',
              ),
              SkillCard(
                url: 'assets/images/linux.png',
                skill: 'Linux',
              ),
              SkillCard(
                url: 'assets/images/git.png',
                skill: 'Git',
              ),
              SkillCard(
                url: 'assets/images/powerapps.png',
                skill: 'Power Apps',
              ),
              SkillCard(
                url: 'assets/images/powerautomate.png',
                skill: 'Power Automate',
              ),
              SkillCard(
                url: 'assets/images/powerbi.png',
                skill: 'Power BI',
              ),
              SkillCard(
                url: 'assets/images/powervirtualagents.png',
                skill: 'Power Virtual Agents',
              ),
              SkillCard(
                url: 'assets/images/dataverse.png',
                skill: 'Dataverse',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
