import 'package:flutter/material.dart';
import 'screens/job_list_screen.dart';
import 'screens/company_post_job_screen.dart';
import 'screens/job_detail_screen.dart';
import 'screens/application_confirmation_screen.dart';

void main() {
  runApp(AppFreelance());
}

class AppFreelance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Freelance',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => JobListScreen(),
        '/post-job': (context) => CompanyPostJobScreen(),
        '/job-detail': (context) => JobDetailScreen(),
        '/application-confirmation': (context) => ApplicationConfirmationScreen(),
      },
    );
  }
}
