import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Feedback Form',
      debugShowCheckedModeBanner: false,
      home: FeedbackFormPage(),
    );
  }
}

class FeedbackFormPage extends StatefulWidget {
  const FeedbackFormPage({super.key});

  @override
  State<FeedbackFormPage> createState() => _FeedbackFormPageState();
}

class _FeedbackFormPageState extends State<FeedbackFormPage> {
  final _nameController = TextEditingController();
  final _rollController = TextEditingController();
  final _feedbackController = TextEditingController();

  double _rating = 5;
  String? _selectedCategory;

  bool _easyToUse = false;
  bool _design = false;
  bool _speed = false;
  bool _support = false;
  bool _agree = false;

  void _submitForm() {
    if (!_agree) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please agree to the terms and conditions')),
      );
      return;
    }

    print("Name: ${_nameController.text}");
    print("Roll Number: ${_rollController.text}");
    print("Feedback: ${_feedbackController.text}");
    print("Rating: $_rating");
    print("Category: $_selectedCategory");
    print("Liked Features:");
    if (_easyToUse) print(" - Easy to Use");
    if (_design) print(" - Design");
    if (_speed) print(" - Speed");
    if (_support) print(" - Support");

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Feedback submitted successfully!')),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.grey.shade200,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Feedback Form'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Name", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 6),
            TextField(
              controller: _nameController,
              decoration: _inputDecoration("Enter your name"),
            ),
            const SizedBox(height: 20),

            const Text("Roll Number", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 6),
            TextField(
              controller: _rollController,
              decoration: _inputDecoration("Enter your roll number"),
            ),
            const SizedBox(height: 20),

            const Text("Enter your feedback...", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 6),
            TextField(
              controller: _feedbackController,
              maxLines: 5,
              decoration: _inputDecoration(""),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Rate your experience", style: TextStyle(fontSize: 16)),
                Text(_rating.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Slider(
              min: 0,
              max: 10,
              divisions: 10,
              value: _rating,
              label: _rating.toInt().toString(),
              onChanged: (value) {
                setState(() {
                  _rating = value;
                });
              },
            ),
            const SizedBox(height: 20),

            const Text("Select a category", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 6),
            DropdownButtonFormField<String>(
              value: _selectedCategory,
              decoration: _inputDecoration("Choose a category"),
              items: ['Bug Report', 'Suggestion', 'Appreciation', 'Other']
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (value) => setState(() => _selectedCategory = value),
            ),
            const SizedBox(height: 30),

            const Text("What features did you like?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            CheckboxListTile(
              title: const Text("Easy to Use"),
              value: _easyToUse,
              onChanged: (value) => setState(() => _easyToUse = value!),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              title: const Text("Design"),
              value: _design,
              onChanged: (value) => setState(() => _design = value!),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              title: const Text("Speed"),
              value: _speed,
              onChanged: (value) => setState(() => _speed = value!),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              title: const Text("Support"),
              value: _support,
              onChanged: (value) => setState(() => _support = value!),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              title: const Text("I agree to the terms and conditions"),
              value: _agree,
              onChanged: (value) => setState(() => _agree = value!),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2196F3), // Blue color
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Submit", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
