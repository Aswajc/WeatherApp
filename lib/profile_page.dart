import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  const Color.fromARGB(255, 167, 163, 152),
      
      appBar: AppBar(backgroundColor:const  Color.fromARGB(255, 188, 170, 90),
      title: const Text('PROFILE PAGE',
      ),
      ),
      
     //body



    );
  }
}

