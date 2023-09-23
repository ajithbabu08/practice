import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:practice/storages%20in%20flutter/hive%20using%20hive%20adapter/screens/register_page.dart';

import '../models/user_model.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // Hive.registerAdapter();
  await Hive.openBox<User>('userData');
  runApp(MaterialApp(home: Login(),));
}

class Login extends StatelessWidget {
  final email=TextEditingController();
  final pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive Login"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                hintText: "Username"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                hintText: "Password"
              ),
            ),
          ),

          ElevatedButton(onPressed: (){},
              child: Text("Login")),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterHive()));
          },
              child: const Text("Not a User? Register Here !!"))
        ],
      ),
    );
  }
}
