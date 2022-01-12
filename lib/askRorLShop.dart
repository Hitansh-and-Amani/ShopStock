import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopstock/loginShop.dart';
import 'package:shopstock/registerShop.dart';
class askRorLShop extends StatefulWidget {
  const askRorLShop({Key? key}) : super(key: key);

  @override
  _askRorLShop createState() => _askRorLShop();
}

class _askRorLShop extends State<askRorLShop> {
  Future<void> navigateToRegisterShop(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => registerShop()));
  }
  Future<void> navigateToLoginShop(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => loginShop()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 0.4*MediaQuery.of(context).size.height),
                  ElevatedButton(onPressed: (){navigateToLoginShop(context);}, child: Text('Sign In'), style:
                  ElevatedButton.styleFrom(primary: Colors.greenAccent)),
                  SizedBox(height: 50),
                  ElevatedButton(onPressed: (){navigateToRegisterShop(context);}, child: Text('Sign Up'), style:
                  ElevatedButton.styleFrom(primary: Colors.greenAccent),)
                ])));
  }
}