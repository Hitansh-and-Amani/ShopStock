import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class loginShop extends StatefulWidget {
  const loginShop({Key? key}) : super(key: key);

  @override
  _loginShopState createState() => _loginShopState();
}

class _loginShopState extends State<loginShop> {
  String username="";
  String pw="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.greenAccent,

      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      username=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Username'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      pw=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Password'),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(onPressed: (){}, child: Text('Submit'), style:
               ElevatedButton.styleFrom(primary: Colors.greenAccent),)
            ],
          ),
        ),
      ),
    );

  }
}
