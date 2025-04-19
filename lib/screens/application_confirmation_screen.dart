import 'package:flutter/material.dart';

class ApplicationConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmação'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle_outline, size: 100, color: Colors.green),
              SizedBox(height: 24),
              Text(
                'Sua candidatura foi enviada com sucesso!',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: Text('Voltar para vagas'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
