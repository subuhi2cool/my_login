import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageURL =
        "https://imgk.timesnownews.com/media/98132833_3250353631650241_7256941876564367439_n.jpg";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.white),
                child: UserAccountsDrawerHeader(
                  accountName: Text('Sana Khan',style: TextStyle(color: Colors.white),),
                  margin: EdgeInsets.zero,
                  accountEmail: Text('sanakhan@gmail.com',style: TextStyle(color: Colors.white),),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageURL),
                  ),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("Email Me",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
