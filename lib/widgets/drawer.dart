// import 'package:firebase_auth/firebase_auth.dart';
// import '/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tabler_icons/tabler_icons.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// import '../../controllers/google_auth.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 150,
              alignment: Alignment.center,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
              color: Colors.green,
              child: Text(
                'Fusée',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: Colors.white),
              ),
              // child: Userbadge()
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: const [
                  DrawerTile(
                    label: 'Create',
                    icon: TablerIcons.writing,
                    route: '/',
                  ),
                  DrawerTile(
                    label: 'RUD',
                    icon: Icons.read_more,
                    route: '/read',
                  ),

                  DrawerTile(
                    label: 'Profile',
                    icon: TablerIcons.user,
                    route: '/profile',
                  ),
                  DrawerTile(
                    label: 'Settings',
                    icon: TablerIcons.settings,
                    route: '/settings',
                  ),
                  DrawerTile(
                    label: 'Help & Support',
                    icon: TablerIcons.help,
                    route: '/settings',
                  ),

                  DrawerTile(
                    label: 'Use as client',
                    icon: Icons.person,
                    route: '/courier-base',
                  ),
                  DrawerTile(
                    label: 'Use as admin',
                    icon: Icons.admin_panel_settings,
                    route: '/admin-base',
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //       vertical: 8.0, horizontal: 16),
                  //   child: TextButton.icon(
                  //     onPressed: () {
                  //       debugPrint('Login out now.');
                  //       final provider = Provider.of<GoogleSignInProvider>(
                  //           context,
                  //           listen: false);
                  //       provider.logout();
                  //     },
                  //     icon: Icon(TablerIcons.logout),
                  //     label: Text('Logout'),
                  //     style: TextButton.styleFrom(
                  //         padding: EdgeInsets.all(16),
                  //         primary: Colors.white,
                  //         backgroundColor: Theme.of(context).primaryColor),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    Key? key,
    required this.label,
    required this.icon,
    required this.route,
  }) : super(key: key);
  final String label;
  final IconData icon;
  final String route;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black45),
      title: Text(
        label,
        style: const TextStyle(fontSize: 15),
      ),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.pushNamed(context, route);
      },
    );
  }
}

// class Userbadge extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final user = FirebaseAuth.instance.currentUser!;
//     return user.isAnonymous
//         ? ListTile(
//             leading: Icon(
//               TablerIcons.user,
//               size: 24,
//             ),
//             title: Text(
//               'Anonymous',
//               style: Theme.of(context).textTheme.bodyText1,
//             ),
//             subtitle: Text(
//               'Sign in to get the most out of our app',
//               style: Theme.of(context).textTheme.bodyText2,
//             ),
//             trailing: IconButton(
//               onPressed: () => Get.to(SignUp()),
//               icon: Icon(TablerIcons.login),
//             ),
//           )
//         : ListTile(
//             leading: CircleAvatar(
//               radius: 30,
//               backgroundImage: NetworkImage(user.photoURL!),
//             ),
//             title: Text(
//               user.displayName!,
//               style: Theme.of(context).textTheme.bodyText1,
//             ),
//             subtitle: Text(
//               'Welcome',
//               style: Theme.of(context).textTheme.bodyText2,
//             ),
//           );
//   }
// }
