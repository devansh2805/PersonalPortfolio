import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils.dart';

class HomePageActions extends StatelessWidget {
  final ScrollController scrollController;
  const HomePageActions({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Utils.isMobile(context);
    return isMobile
        ? Column(
            children: getWidgets(scrollController, context, isMobile: true),
          )
        : Row(
            children: getWidgets(scrollController, context),
          );
  }

  List<Widget> getWidgets(
      ScrollController scrollController, BuildContext context,
      {bool isMobile = false}) {
    int scrollDuration = isMobile ? 800 : 500;
    return [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: isMobile ? 20 : 0,
        ),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              0,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeIn,
            );
          },
          child: Text(
            'About',
            style: GoogleFonts.firaCode(
              textStyle: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: isMobile ? 20 : 0,
        ),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 650 : 350,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeIn,
            );
          },
          child: Text(
            'Skills',
            style: GoogleFonts.firaCode(
              textStyle: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: isMobile ? 20 : 0,
        ),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 3120 : 1100,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeIn,
            );
          },
          child: Text(
            'Projects',
            style: GoogleFonts.firaCode(
              textStyle: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: isMobile ? 20 : 0,
        ),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            scrollController.animateTo(
              isMobile ? 4200 : 1900,
              duration: Duration(milliseconds: scrollDuration),
              curve: Curves.easeIn,
            );
          },
          child: Text(
            'Contact',
            style: GoogleFonts.firaCode(
              textStyle: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      )
    ];
  }
}
