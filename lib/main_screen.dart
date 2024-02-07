import 'package:flutter/material.dart';
import 'package:statemanagement/image_picker/ui/capture_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column with Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CaptureScreen()));
              },
              child: const Text('Image Picker using bloc'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add your button 3 logic here
              },
              child: const Text('COunter using Bloc'),
            ),
          ],
        ),
      ),
    );
  }
}
