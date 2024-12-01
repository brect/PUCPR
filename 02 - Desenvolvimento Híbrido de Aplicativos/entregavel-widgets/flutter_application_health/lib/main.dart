import 'package:flutter/material.dart';

// Lista de medicamentos (exemplo)
const medications = [
  {'time': '12:00 AM', 'name': 'Orapronobis', 'dose': '250 mg'},
  {'time': '1:00 AM', 'name': 'Lysine', 'dose': '500 mg'},
  {'time': '6:00 AM', 'name': 'Vitamin C', 'dose': '1000 mg'},
  {'time': '12:00 PM', 'name': 'Magnesium', 'dose': '400 mg'},
  {'time': '6:00 PM', 'name': 'Omega 3', 'dose': '1000 mg'},
  {'time': '12:00 AM', 'name': 'Orapronobis', 'dose': '250 mg'},
  {'time': '1:00 AM', 'name': 'Lysine', 'dose': '500 mg'},
  {'time': '6:00 AM', 'name': 'Vitamin C', 'dose': '1000 mg'},
  {'time': '12:00 PM', 'name': 'Magnesium', 'dose': '400 mg'},
  {'time': '6:00 PM', 'name': 'Omega 3', 'dose': '1000 mg'},
  {'time': '12:00 AM', 'name': 'Orapronobis', 'dose': '250 mg'},
  {'time': '1:00 AM', 'name': 'Lysine', 'dose': '500 mg'},
  {'time': '6:00 AM', 'name': 'Vitamin C', 'dose': '1000 mg'},
  {'time': '12:00 PM', 'name': 'Magnesium', 'dose': '400 mg'},
  {'time': '6:00 PM', 'name': 'Omega 3', 'dose': '1000 mg'},
  {'time': '12:00 AM', 'name': 'Orapronobis', 'dose': '250 mg'},
  {'time': '1:00 AM', 'name': 'Lysine', 'dose': '500 mg'},
  {'time': '6:00 AM', 'name': 'Vitamin C', 'dose': '1000 mg'},
  {'time': '12:00 PM', 'name': 'Magnesium', 'dose': '400 mg'},
  {'time': '6:00 PM', 'name': 'Omega 3', 'dose': '1000 mg'},
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        home: MedicationList(medications) // Passa a lista como argumento
        );
  }
}

class MedicationList extends StatelessWidget {
  final List<Map<String, String>> medications;

  const MedicationList(this.medications,
      {super.key}); // Recebe a lista no construtor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Medicamentos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: medications.length,
          itemBuilder: (context, index) {
            final medication = medications[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Horário
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          medication['time']!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'AM',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16.0),
                    // Ícone do medicamento
                    const Icon(
                      Icons.medical_services,
                      size: 50,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 16.0),
                    // Detalhes do medicamento
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          medication['name']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          medication['dose']!,
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
