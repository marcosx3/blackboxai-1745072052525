import 'package:flutter/material.dart';

class Job {
  final String title;
  final String description;

  Job({required this.title, required this.description});
}

class JobListScreen extends StatefulWidget {
  @override
  _JobListScreenState createState() => _JobListScreenState();
}

class _JobListScreenState extends State<JobListScreen> {
  List<Job> jobs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vagas de Freelance'),
      ),
      body: jobs.isEmpty
          ? Center(
              child: Text(
                'Nenhuma vaga disponível.\nClique no botão + para adicionar uma vaga.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: jobs.length,
              itemBuilder: (context, index) {
                final job = jobs[index];
                return ListTile(
                  title: Text(job.title),
                  subtitle: Text(job.description),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/job-detail',
                      arguments: job,
                    );
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newJob = await Navigator.pushNamed(context, '/post-job');
          if (newJob != null && newJob is Job) {
            setState(() {
              jobs.add(newJob);
            });
          }
        },
        child: Icon(Icons.add),
        tooltip: 'Adicionar vaga',
      ),
    );
  }
}
