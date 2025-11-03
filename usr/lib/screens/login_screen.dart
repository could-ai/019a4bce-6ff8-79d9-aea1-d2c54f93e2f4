import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedRole = 'مراقب';
  final TextEditingController idController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String selectedLanguage = 'العربية';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Raqib+'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50),
            const Text(
              'طبيعة الطرف',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => selectedRole = 'تاجر'),
                  child: const Text('تاجر'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedRole == 'تاجر' ? Colors.blue : Colors.grey,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => selectedRole = 'زبون'),
                  child: const Text('زبون'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedRole == 'زبون' ? Colors.blue : Colors.grey,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => selectedRole = 'مراقب'),
                  child: const Text('مراقب'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedRole == 'مراقب' ? Colors.blue : Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            TextField(
              controller: idController,
              decoration: const InputDecoration(
                labelText: 'رقم بطاقة التعريف الوطنية',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'كلمة السر',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text('تسجيل الدخول', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedLanguage,
              items: ['العربية', 'English'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedLanguage = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}