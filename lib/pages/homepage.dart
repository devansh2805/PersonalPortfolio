import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components/contactme.dart';
import 'package:portfolio_app/components/projects.dart';
import 'package:portfolio_app/utils.dart';
import 'package:portfolio_app/components/home_page_actions.dart';
import 'package:portfolio_app/components/my_drawer.dart';
import 'package:portfolio_app/components/aboutme.dart';
import 'package:portfolio_app/components/top_skills.dart';

class HomePage extends StatelessWidget {
  final ScrollController scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "{  Devansh Shah  }",
          style: GoogleFonts.sourceCodePro(
            textStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.lightBlue,
        actions: [
          Utils.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : HomePageActions(
                  scrollController: scrollController,
                ),
        ],
        elevation: 2,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: scrollController,
              child: Container(
                width: Utils.mdqw(context),
                child: Column(
                  children: const [
                    AboutMe(),
                    SizedBox(
                      height: 30,
                    ),
                    TopSkills(),
                    SizedBox(
                      height: 30,
                    ),
                    RecentProjects(),
                    SizedBox(
                      height: 30,
                    ),
                    ContactMe(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      endDrawer: Utils.isMobile(context)
          ? MyDrawer(
              scrollController: scrollController,
            )
          : null,
      floatingActionButton: FloatingActionButton(
        mini: Utils.isMobile(context) ? true : false,
        onPressed: () {
          scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeIn,
          );
        },
        child: const Icon(Icons.arrow_upward_rounded),
      ),
      key: _scaffoldKey,
    );
  }
}
