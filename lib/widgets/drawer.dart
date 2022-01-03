import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/p720x720/270463415_1884085791801284_5935010278596955365_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=e3f864&_nc_ohc=Rd1-bsdltWIAX8i4vzl&_nc_ht=scontent.fktm8-1.fna&oh=00_AT-tVjy1zigstbyCiXwMJmClgMSi3sZwfErwN2Er46OYNQ&oe=61D7C0D4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  
                  accountName: Text("Abhishek Koju"),
                  accountEmail: Text("abhishekkoju@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl) ,)
                ),
                ),
          
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color:Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
           ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color:Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
           ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color:Colors.white,
            ),
            title: Text(
              "mail",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
