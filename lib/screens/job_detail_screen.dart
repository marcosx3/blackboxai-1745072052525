import 'package:flutter/material.dart';
import 'job_list_screen.dart';

class JobDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Job job = ModalRoute.of(context)!.settings.arguments as Job;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Vaga'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              job.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              job.description,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/application-confirmation');
                },
                child: Text('Candidatar-se'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
