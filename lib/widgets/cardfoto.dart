import 'dart:io';

import 'package:curso_flutterfirebase/useradd_page/imagepicker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class CardFoto extends StatefulWidget {

  @override
  _CardFotoState createState() => _CardFotoState();
}

class _CardFotoState extends State<CardFoto> with ImagePickerListener{

  ImagePickerHandler imagePicker;
  static File croppedFile;

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePickerHandler(this);
  }

  Widget showImage(){
    if(croppedFile != null){
      return Image.file(
        croppedFile,
        width: 300,
        height: 300,
      );
    } else {
      return Image.asset("assets/logo-google.png");
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            child: Container(
              height: 200,
              width: 600,
              child: showImage(),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text("Gallery", style: TextStyle(color: Colors.white),),
              color: Colors.pink[200],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              onPressed: (){
                imagePicker.pickImageFromGallery(ImageSource.gallery);
              },
            ),
            SizedBox(width:20),
            FlatButton(
              child: Text("Camera",style: TextStyle(color: Colors.white),),
              color: Colors.pink[200],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              onPressed: (){
                imagePicker.pickImageFromGallery(ImageSource.camera);
              },
            )
          ],
        )
      ],
    );
  }

  @override
  userImage(File _image) {
    croppedFile = _image;
    setState(() {
      
    });
  }
}