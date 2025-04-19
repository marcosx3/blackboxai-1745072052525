import 'package:flutter/material.dart';
import 'job_list_screen.dart';

class CompanyPostJobScreen extends StatefulWidget {
  @override
  _CompanyPostJobScreenState createState() => _CompanyPostJobScreenState();
}

class _CompanyPostJobScreenState extends State<CompanyPostJobScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final newJob = Job(title: _title, description: _description);
      Navigator.pop(context, newJob);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Publicar Vaga'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Título da vaga'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o título da vaga';
                  }
                  return null;
                },
                onSaved: (value) => _title = value ?? '',
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Descrição da vaga'),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a descrição da vaga';
                  }
                  return null;
                },
                onSaved: (value) => _description = value ?? '',
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submit,
                child: Text('Publicar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
