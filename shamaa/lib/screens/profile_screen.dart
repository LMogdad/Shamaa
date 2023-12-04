import 'package:flutter/material.dart';
import 'package:shamaa/style/custom_colors.dart';
import 'package:shamaa/widgets/app_bar.dart';
import 'package:shamaa/widgets/profile_wiget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: purple,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        leading: ChatGPTBottom(),
        title: title(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 33),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 83,
                  height: 83,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 0.39, color: Color(0xFF3A3A3A)),
                    ),
                  ),
                  child: Image.asset("assets/c1.png"),
                ),
                const SizedBox(
                  width: 9,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'عبدالله محمد',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF3A3A3A),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'الصف الثالث الابتدائي',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF3A3A3A),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            const ListProfile(
              txt: 'الاشعارات',
              iconLeading: Icon(Icons.notifications_none_outlined),
              iconTrailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListProfile(
              txt: 'اعدادات الحساب',
              iconLeading: Icon(Icons.edit_note_sharp),
              iconTrailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListProfile(
              txt: 'تسجيل خروج',
              iconLeading: Icon(Icons.exit_to_app),
              iconTrailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListProfile(
              txt: 'عن التطبيق',
              iconLeading: Icon(Icons.info_outline),
              iconTrailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListProfile(
              txt: 'سياسة الاستخدام',
              iconLeading: Icon(Icons.lock_clock_outlined),
              iconTrailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
