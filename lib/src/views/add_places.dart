import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import 'like.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  List imagelist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(children: [
          SizedBox(height: 90),
          Comman_Textfield(
            hintText: "Title",
          ),
          SizedBox(height: 10),
          Comman_Textfield(
            maxLines: 3,
            hintText: "Description",
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CommanText(
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
                child: CommanText(
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

Con_Textfield({
  TextEditingController? controllller,
  double? containerheight,
  var keyboardtype,
  bool? inputfilled,
  Color? cursorcolor,
  Color? bordercolor,
  bool? is_border,
  Color? inputcolor,
  Color? decorationcolor,
  double? decorationwidth,
  Color? textfieldcolor,
  double? inputborderradious,
  EdgeInsetsGeometry? contentpadding,
  String? hinttext,
  TextStyle? hintstyle,
  Color? suffixiconcolor,
  double? fontsize,
  Widget? suffixicon,
  List<TextInputFormatter>? inputformat,
  Widget? prefix,
  bool? is_enable,
  bool? is_obscureText,
  int? maxlenght,
  Key? key,
  int? maxLines,
  FontWeight? text_fontWeight,
  void Function(dynamic)? onchange,
  String? Function(String?)? Validator,
}) {
  return TextFormField(
    maxLength: maxlenght ?? 100000,
    key: key,
    validator: Validator ?? (val) {},
    maxLines: maxLines ?? 1,
    obscureText: is_obscureText ?? false,
    enabled: is_enable ?? true,
    inputFormatters: inputformat ?? [],
    onChanged: onchange ?? (val) {},
    keyboardType: keyboardtype ?? TextInputType.emailAddress,
    controller: controllller ?? null,
    cursorColor: cursorcolor ?? null,
    style: TextStyle(
        fontWeight: text_fontWeight ?? FontWeight.w100,
        color: textfieldcolor ?? Colors.black,
        fontSize: fontsize ?? 16),
    textAlign: TextAlign.start,
    decoration: Con_Inputdecoration(
        prefix: prefix ?? null,
        suffixiconcolor: suffixiconcolor,
        suffixicon: suffixicon ?? null,
        hinttext: hinttext ?? "",
        hintstyle: hintstyle ?? null,
        color: inputcolor ?? Colors.black,
        borderradius: inputborderradious ?? 8,
        contentpadding: contentpadding ??
            EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
        filled: inputfilled ?? true),
  );
}

Con_Inputdecoration(
    {Color? color,
    bool? filled,
    double? borderradius,
    bool? is_border,
    String? hinttext,
    TextStyle? hintstyle,
    Color? suffixiconcolor,
    Widget? suffixicon,
    Widget? prefix,
    EdgeInsetsGeometry? contentpadding}) {
  return InputDecoration(
    counterText: "",
    labelText: hinttext,
    labelStyle: hintstyle,
    prefixIcon: prefix ?? null,
    suffixIcon: suffixicon ?? null,
    suffixIconColor: suffixiconcolor,
    filled: filled ?? true,
    fillColor: color ?? Colors.black,
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderradius ?? 8),
        borderSide: BorderSide(
          color: Color(0xff367AFF),
        )),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderradius ?? 8),
        borderSide: BorderSide(
          color: Color(0xffD9D9D9),
        )),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderradius ?? 8),
        borderSide: BorderSide(color: Colors.red)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderradius ?? 8),
        borderSide: BorderSide(color: Color(0xffD9D9D9))),
    contentPadding:
        contentpadding ?? EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
  );
}

Comman_Textfield(
    {Widget? suffixicon,
    TextStyle? hintstyle,
    bool? is_enable,
    bool? is_obscureText,
    List<TextInputFormatter>? inputformat,
    void Function(dynamic)? onchange,
    TextEditingController? controller,
    var keyboardtype,
    int? maxLines,
    required String hintText,
    int? maxlenght,
    Key? key,
    Color? suffixiconcolor,
    String? Function(String?)? Validator,
    Widget? prefix}) {
  return Con_Textfield(
    maxlenght: maxlenght ?? 100000,
    key: key,
    Validator: Validator ?? (val) {},
    maxLines: maxLines ?? 1,
    is_enable: is_enable ?? true,
    is_obscureText: is_obscureText ?? false,
    inputcolor: Colors.white,
    is_border: false,
    keyboardtype: keyboardtype ?? TextInputType.emailAddress,
    inputformat: inputformat ?? [],
    onchange: onchange ?? (val) {},
    controllller: controller ?? null,
    suffixicon: suffixicon ?? null,
    cursorcolor: Color(0xff000000),
    hinttext: hintText,
    prefix: prefix ?? null,
    suffixiconcolor: suffixiconcolor ?? null,
    textfieldcolor: Colors.black,
    text_fontWeight: FontWeight.w500,
    hintstyle: hintstyle ??
        TextStyle(
          fontWeight: FontWeight.w400,
          color: Color(0xff676767),
          fontSize: 16,
        ),
  );
}
