import 'package:flutter/material.dart';
import 'package:myshop/constants.dart';

class LoginRegisterChoice extends StatelessWidget {
  const LoginRegisterChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(350.0),
        child: SafeArea(
          child: SizedBox(
            height: 500,
            child: Image.asset(
              "assets/images/shopping.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            SizedBox(height: kDefaultPadding),
            Flexible(
              child: Text(
                "Discover Your \n Shopping Here",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Flexible(
              child: Text(
                "It's a long established fact that a reader\n will be distracted by the readable\n content of page.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 17.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
                maxLines: 3,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 13),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/register');
              },
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  top: kDefaultPadding / 1.5,
                  bottom: kDefaultPadding / 1.5,
                ),
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffF6F6F6),
                side: const BorderSide(width: 1, color: kPrimaryColor),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  left: kDefaultPadding * 1.7,
                  right: kDefaultPadding * 1.7,
                  top: kDefaultPadding / 1.5,
                  bottom: kDefaultPadding / 1.5,
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
