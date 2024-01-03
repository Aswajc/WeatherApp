
import 'package:flutter/material.dart';
import 'package:flutter_first/my_list_title.dart';

class MyDrawer extends StatelessWidget {
final void Function()? onProfileTap;

  const MyDrawer({super.key,
  required this.onProfileTap
  });

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor:  Color.fromARGB(255, 181, 165, 104),
      child: Column(
        children: [
           DrawerHeader(child:Icon(Icons.person,
          size: 52,
          )),
             Padding(
           padding: const EdgeInsets.only(left: 20,top: 30),
           child: MyListTile(
            icon: Icons.home, 
            text:'H O M E',
            onTap: () => Navigator.pop(context),

            ),
         ),
        
        
        Padding(
          padding:  EdgeInsets.only(left:20),
          child: MyListTile(
            icon: Icons.person_2, 
            text: 'P R O F I L E',
            onTap: onProfileTap,           
            ),  
        ),
      ]),
    );
  }
}