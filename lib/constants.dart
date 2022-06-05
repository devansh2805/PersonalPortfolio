import 'package:portfolio_app/models/project_model.dart';

class Constants {
  static final List<ProjectModel> projects = [
    ProjectModel(
      actionLink: 'https://github.com/devansh2805/air_quality_crowdsourcing',
      imgURL: 'assets/images/myair.png',
      shortDescription:
          'MyAir mobile app is integrated with a PM Sensor for measuring PM2.5 and PM10. The idea is to crowdsource PM Data and show real time location specific Air Quality. The App also fetches City PM Data from Weather Map API',
      projectName: 'MyAir',
    ),
    ProjectModel(
      actionLink: 'https://github.com/devansh2805/LangChat',
      imgURL: 'assets/images/langchat.png',
      shortDescription:
          'LangChat is a regular chat application, wherein users communicate with each other using messages over the internet. What langChat brings in new is the idea of removing language barriers in such a communication system.',
      projectName: 'LangChat',
    ),
    ProjectModel(
      actionLink: 'https://devansh2805.github.io/ProNote/',
      imgURL: 'assets/images/pronote.png',
      shortDescription:
          'ProNote is a light weight text editor which includes paragraph selections, file security and font aelectivity. This Application is made for editing and saving files on local PC with password encryption, files are stored in .ppf file format.',
      projectName: 'ProNote',
    ),
  ];
}
