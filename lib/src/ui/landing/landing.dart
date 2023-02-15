
import 'package:changa_app/src/common/colors.dart';
import 'package:changa_app/src/ui/login/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/welcome.jpg"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [_renderLogo(context), _renderFooter(context)],
        ),
      ),
    );
  }

  Expanded _renderLogo(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          "CHANGA INSTITUTE",
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              letterSpacing: 4,
            ),
          ),
        ),
      ),
    );
  }

  Column _renderFooter(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 16,
          ),
          child: Text(
            "Almost There",
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
          child: Text(
            "Take a Deep Breath to Start Your Journey",
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        MaterialButton(
          child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primary1, AppColors.primary2],
              ),
              borderRadius: const BorderRadius.all(Radius.circular(24)),
            ),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              child: Text(
                "Login",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
          },
        ),
        const Padding(padding: EdgeInsets.all(10)),
        MaterialButton(
          child: Ink(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff020500), Color(0xff14a614)],
              ),
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              child: Text(
                "Register",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "By signing up, you agree to ",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Terms and Condition',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextSpan(
                  text: ' and ',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
