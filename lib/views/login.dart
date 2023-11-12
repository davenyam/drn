import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg3.jpg"),
            fit: BoxFit.cover,
            opacity: 150,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Shepify.jpg',
                  ),
                  Text(
                    'Hello there!',
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    'Welcome Back.',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        textAlign: TextAlign.start,
                        autocorrect: true,
                        enableSuggestions: true,
                        expands: true,
                        maxLines: null,
                        textCapitalization: TextCapitalization.none,
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined),
                          filled: true,
                          fillColor: Colors.grey[200],
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.start,
                        autocorrect: true,
                        enableSuggestions: true,
                        maxLines: 1,
                        textCapitalization: TextCapitalization.none,
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.password_outlined),
                          filled: true,
                          fillColor: Colors.grey[200],
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
