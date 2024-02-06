import 'package:flutter/material.dart';
import 'package:nearme/Api_trigger/Api_helper.dart';
import 'package:nearme/Auth/Login.dart';
import 'package:nearme/Constant_widget/Con_wid.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  TextEditingController email_controller = TextEditingController();
  TextEditingController username_controller = TextEditingController();
  TextEditingController pass_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset(
                    'Assets/signup_image_tour.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 10),
                Con_wid.CommanText(
                    text: "Sign up", Size: 32, fontweight: FontWeight.w500),
                Con_wid.CommanText(
                    text: "Sign up to enjoy the feature of Revolutie",
                    Size: 14,
                    color: Color(0xff969696),
                    fontweight: FontWeight.w500),
                SizedBox(height: 20),
                Con_wid.Comman_Textfield(
                    controller: username_controller,
                    hintText: "Username",
                    keyboardtype: TextInputType.emailAddress),
                SizedBox(height: 15),
                Con_wid.Comman_Textfield(
                    controller: email_controller,
                    hintText: "Email",
                    keyboardtype: TextInputType.emailAddress),
                SizedBox(height: 15),
                Con_wid.Comman_Textfield(
                    is_obscureText: true,
                    controller: pass_controller,
                    hintText: "Password",
                    suffixicon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          size: 23,
                        ))),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    print("object");
                    var response = await Api_Helper.Insert_api(
                        api: "https://neartravel.teleferti.com/api/register",
                        data: {
                          "method": "manual",
                          "email": "vlathiya12jsc3@gmail.comdshfdsv",
                          "name": username_controller.text,
                          "birth_date": "05-07-2023",
                          "password": pass_controller.text,
                        });
                    print(response);
                    print("object");
                  },
                  child: Con_wid.Comman_container(
                      child: Center(
                    child: Con_wid.CommanText(
                        text: "Sign up",
                        Size: 18,
                        fontweight: FontWeight.w600,
                        color: Colors.white),
                  )),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: w * 0.38,
                      child: const Divider(),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "or",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromRGBO(110, 110, 110, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.38,
                      child: const Divider(),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                    width: double.infinity,
                    height: 50,
                    child: Image.asset(
                      "Assets/button.png",
                      fit: BoxFit.fill,
                    )),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Con_wid.CommanText(
                        text: "Already have an account? ",
                        color: Color(0xff6C6C6C),
                        fontweight: FontWeight.w400),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      child: Con_wid.CommanText(
                          text: "Sign in",
                          color: Color(0xff367AFF),
                          textDecoration: TextDecoration.underline,
                          Size: 16,
                          fontweight: FontWeight.w500,
                          textDecorationcolor: Color(0xff367AFF)),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        )));
  }
}
