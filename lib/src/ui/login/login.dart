import 'package:changa_app/src/common/colors.dart';
import 'package:changa_app/src/models/login_model.dart';
import 'package:changa_app/src/repo/auth_repository.dart';
import 'package:changa_app/src/ui/login/forgotPassword.dart';
import 'package:changa_app/src/ui/screens/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: EdgeInsets.only(top: MediaQuery
              .of(context)
              .viewPadding
              .top),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff182a77), Color(0xff000000)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          height: height,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/meditate_girl.jpg"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(height * 0.2),
                  ),
                ),
                width: height * 0.18,
                height: height * 0.18,
                margin: const EdgeInsets.symmetric(vertical: 30),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "Welcome Back",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 30),
                child: Text(
                  "Login to Continue",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: TextField(
                  controller: email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    hintText: 'Enter your email or phone number',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 20,
                    ),
                  ),
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(fontSize: 16)),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 4, 16, 28),
                child: TextField(
                  controller: password,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    hintText: 'Enter your Password',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 20,
                    ),
                  ),
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(fontSize: 16)),
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
                  if (email.text
                      .toString()
                      .trim()
                      .isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Enter email'),
                            backgroundColor: Colors.red));
                  }else if(email.text.toString().trim().isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enter password'),
                  backgroundColor: Colors.red));
                  }else{

                         auth(context,email: email.text.toString().trim(),password: password.text.toString().trim());
                  }

                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 18),
                child: MaterialButton(
                  child: Text(
                    "Forgot Pasword?",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPassword(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 3,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: const EdgeInsets.all(4),
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      child: Text(
                        "or",
                        style: GoogleFonts.montserrat(),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: height * 0.01,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.asset("assets/google.png"),
                        onPressed: () {},
                        iconSize: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: IconButton(
                          icon: Image.asset(
                            "assets/facebook.png",
                          ),
                          onPressed: () {},
                          iconSize: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: IconButton(
                          icon: Image.asset(
                            "assets/twitter.png",
                          ),
                          onPressed: () {},
                          iconSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    children: [
                      TextSpan(
                        text: "SignUp",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(fontWeight: FontWeight
                              .bold),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      )
                    ],
                    style: GoogleFonts.montserrat(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future auth(BuildContext context,{String? email, String? password}) async{
   LoginModel loginModel = await AuthRepository().fetchLogin(email: email,password: password);
   print(loginModel.success);
   if(loginModel.success==true){
     ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(content: Text('Login Done'),
         backgroundColor: Colors.red));
     Navigator.pushReplacement(
       context,
       MaterialPageRoute(
         builder: (context) => const Home(),
       ),
     );

   }
  }
}
