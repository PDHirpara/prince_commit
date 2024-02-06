import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nearme/Constant_widget/Con_wid.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Center(
              child: Con_wid.CommanText(
                  text: "Edit Profile", fontweight: FontWeight.w500, Size: 20),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: _pickImage,
              child: Center(
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      image: _imageFile == null
                          ? DecorationImage(
                              image: AssetImage(
                                  "Assets/profileImage/2289_SkVNQSBGQU1PIDEwMjgtMTE2 2.png"),
                              fit: BoxFit.fill)
                          : DecorationImage(
                              image: FileImage(_imageFile!), fit: BoxFit.fill)),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                        "Assets/solar_camera-minimalistic-bold.png",
                        scale: 4),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Con_wid.CommanText(
                text: "Name", Size: 20, fontweight: FontWeight.w500),
            SizedBox(height: 10),
            Con_wid.Comman_Textfield(hintText: "Name"),
            SizedBox(height: 10),
            Con_wid.CommanText(
                text: "Email", Size: 20, fontweight: FontWeight.w500),
            SizedBox(height: 10),
            Con_wid.Comman_Textfield(hintText: "Email"),
            SizedBox(height: 10),
            Con_wid.CommanText(
                text: "Password", Size: 20, fontweight: FontWeight.w500),
            SizedBox(height: 10),
            Con_wid.Comman_Textfield(hintText: "Password"),
            Spacer(),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.7,
                decoration: BoxDecoration(
                    color: Color(0xff242760),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Con_wid.CommanText(
                        text: "Save",
                        fontweight: FontWeight.w500,
                        Size: 20,
                        color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }
}
