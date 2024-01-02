import 'package:flutter/material.dart';
import 'package:flutter_first/profile_page.dart';
import 'drawer.dart';
void main(List<String> args) {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor:const Color.fromARGB(255, 160, 56, 56)

      ),
      home:const  Homescreen(),
    );
  
  }

}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

    void gotoProfilePage(context){
      Navigator.pop(context);
      Navigator.push(context,MaterialPageRoute(builder:(context) => const ProfilePage()));
    }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      drawer:  MyDrawer(
        onProfileTap: () {
  gotoProfilePage(context);
},
       // onProfileTap: gotoProfilePage,
      ),
      backgroundColor: const Color.fromARGB(255, 143, 142, 139),
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 117, 81, 81),),

    );
  }
}