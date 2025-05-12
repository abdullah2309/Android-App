import 'package:flutter/material.dart';

void main() => runApp(sidbar());

class sidbar extends StatelessWidget {
  const sidbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(
              onPressed: () {
                Drawer();
              },
              icon: Icon(Icons.notifications),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            SizedBox(width: 10),
          ],
          title: Text('Android App', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                width: double.infinity,
                height: 350,
                color: Colors.blue,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScuQGyYbgV9HFyiunO9mF6_lnB6MYwcx6t3w&s',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Abdullah',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Abdullah@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text('Abdullah'),
                trailing: Icon(Icons.person),
                subtitle: Text("........."),
              ),
              Divider(),
              ListTile(
                title: Text('+98 1234567890'),
                trailing: Icon(Icons.phone),
                subtitle: Text("........."),
              ),
              Divider(),
              ListTile(
                title: Text('notification'),
                trailing: Icon(Icons.notifications),
                subtitle: Text("........."),
              ),
              Divider(),
              ListTile(
                title: Text('Settings'),
                trailing: Icon(Icons.settings),
                subtitle: Text("........."),
              ),
              Divider(),
            ],
          ),
        ),

        ///////////// End Drawer /////////////////////
        body: Center(
          child: Container(
            width: 400,
            height: 500,

            // decoration: BoxDecoration(
            //   color: const Color.fromARGB(97, 237, 237, 237),
            //   borderRadius: BorderRadius.circular(40),
            //   border: Border.all(color: Colors.blue, width: ),
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScuQGyYbgV9HFyiunO9mF6_lnB6MYwcx6t3w&s',
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Enter your Name'),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Enter your Email'),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Enter your Address'),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  width: 300,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.login, color: Colors.white),
                        SizedBox(width: 10),
                        Text('Login', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
