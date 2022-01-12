import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class registerShop extends StatefulWidget {
  const registerShop({Key? key}) : super(key: key);

  @override
  _registerShopState createState() => _registerShopState();
}

class _registerShopState extends State<registerShop> {
  String shopName="";
  String name="";
  String email="";
  String phoneNo="";
  String password="";
  String address="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
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
                      shopName=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Shop Name'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      name=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Employee Name'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      email=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Email'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      phoneNo=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Phone number'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      address=val;
                    });
                  },
                  decoration:
                  InputDecoration(hintText: 'Address'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(width: 0.5*MediaQuery.of(context).size.width,
                child: TextFormField(
                  onChanged: (val){
                    setState(() {
                      password=val;
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
