import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nearme/Constant_widget/Con_wid.dart';

class Add_photo extends StatefulWidget {
  const Add_photo({super.key});

  @override
  State<Add_photo> createState() => _Add_photoState();
}

class _Add_photoState extends State<Add_photo> {
  List imagelist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(children: [
          SizedBox(height: 90),
          Con_wid.Comman_Textfield(
            hintText: "Title",
          ),
          SizedBox(height: 10),
          Con_wid.Comman_Textfield(
            maxLines: 3,
            hintText: "Description",
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Con_wid.CommanText(
                  text: "Add Memories", Size: 22, fontweight: FontWeight.w500),
              Spacer(),
              GestureDetector(
                onTap: _pickImage1,
                child: Icon(
                  Icons.camera_alt_outlined,
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: _pickImage,
                child: Icon(
                  Icons.insert_photo,
                ),
              ),
            ],
          ),
          imagelist.isEmpty ? Spacer() : Container(),
          Visibility(
            visible: imagelist.length >= 1,
            child: Expanded(
              child: ListView.builder(
                itemCount: imagelist.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: FileImage(imagelist[index]),
                              fit: BoxFit.cover)),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
                color: Color(0xff242760),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Con_wid.CommanText(
                    text: "Add Place",
                    Size: 20,
                    color: Colors.white,
                    fontweight: FontWeight.w500)),
          ),
          SizedBox(height: 20)
        ]),
      ),
    );
  }

  File? _imageFile1;

  Future<void> _pickImage1() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
        imagelist.add(_imageFile);
        setState(() {});
      });
    }
  }

  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
        imagelist.add(_imageFile);
        setState(() {});
      });
    }
  }
}
