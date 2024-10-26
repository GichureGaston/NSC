import 'package:flutter/material.dart';

class NotificationSound extends StatefulWidget {
  const NotificationSound({super.key});

  @override
  State<NotificationSound> createState() => _NotificationSoundState();
}

class _NotificationSoundState extends State<NotificationSound> {
  bool notificationEnabled = false;
  bool defaultSoundEnabled = false;
  List<String> list = <String>['GuluGulu', 'PamPamPam', 'Ting', 'Chirp'];
  String dropdownValue = 'GuluGulu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Notification Sounds",
              style: TextStyle(fontSize: 20),
            ),
            SwitchListTile(
              contentPadding: const EdgeInsets.all(10.0),
              tileColor: Colors.white70,
              value: notificationEnabled,
              onChanged: (bool newValue) {
                setState(() {
                  notificationEnabled = newValue;
                });
              },
              title: const Text('Vibrate'),
            ),
            const SizedBox(height: 8.0),
            SwitchListTile(
              contentPadding: const EdgeInsets.all(12.0),
              tileColor: Colors.white70,
              value: defaultSoundEnabled,
              onChanged: (bool newValue) {
                setState(() {
                  defaultSoundEnabled = newValue;
                });
              },
              title: const Text('Default Sound'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DropdownButton<String>(
                isExpanded: true,
                value: dropdownValue,
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
