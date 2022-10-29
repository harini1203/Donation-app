import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  Color bodyColor = const Color(0xFFFFFFFF);
  Color headerColor = const Color(0xFF1E385D);
  Color textColor = const Color(0xFFFFFFFF);
  Color fieldColor = const Color(0xFFEBEBEB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bodyColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                color: headerColor,
                borderRadius: BorderRadius.only(
                  bottomRight: const Radius.circular(200.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Welcome",
                      style: GoogleFonts.poppins(height: 1, fontWeight: FontWeight.bold, fontSize: 35, color: textColor),
                    ),
                    Text(
                      "Create new account",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 13, color: textColor),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: TextField(
                          style: GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 16, color: headerColor),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(55.0),
                                ),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.all(16),
                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey[600]),
                              hintText: "Email",
                              prefixIcon: Icon(Icons.email),
                              fillColor: fieldColor),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: TextField(
                          style: GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 16, color: headerColor),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(55.0),
                                ),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.all(16),
                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey[600]),
                              hintText: "Password",
                              prefixIcon: Icon(Icons.key),
                              fillColor: fieldColor),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: TextField(
                          style: GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 16, color: headerColor),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(55.0),
                                ),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              isDense: true,
                              contentPadding: const EdgeInsets.all(16),
                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey[600]),
                              hintText: "Confirm Password",
                              prefixIcon: Icon(Icons.key),
                              fillColor: fieldColor),
                        ),
                      ),
                      SizedBox(height: 40),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: headerColor, borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text("Sign Up", style: GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 16, color: textColor)),
                          ),
                        ),
                      ),
                      SizedBox(height: 9),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                          Text("Already have an account?", style: GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 12, color: Colors.grey[600])),
                          SizedBox(width: 5),
                          Text("Login here", style: GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 12, color: headerColor)),
                        ]),
                      ),
                    ],
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
