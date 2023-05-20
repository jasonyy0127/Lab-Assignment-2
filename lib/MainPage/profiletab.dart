import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({
    Key? key,
    required this.username,
  }) : super(key: key);

  final String username;

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/user.png'),
                        scale: 8))),
            const Text("Welcome User!", style: TextStyle(fontSize: 24)),
            Text(widget.username, style: const TextStyle(fontSize: 24)),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Log Out"))
          ],
        ),
      ),
    );
    ;
  }
}
