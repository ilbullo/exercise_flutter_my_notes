import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/views/login_view.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Column(
      children: [
        const Text("Ciao"),
        TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              print('Successfully logged out');
            },
            child: const Text('Logout'))
      ],
    );
  }
}
