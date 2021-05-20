import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ImagePick extends StatefulWidget {
  @override
  _ImagePickState createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {
  File _image;
  final picker = ImagePicker();

  getImage(ImageSource src) async {
    final pickFile = await picker.getImage(source: src);
    if (pickFile != null) {
      //_image =  File.(pickFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var ad = AlertDialog(
            title: Text('Choose Picture From'),
            content: Container(
              height: 157,
              child: Column(
                children: [
                  Divider(
                    color: Colors.amber,
                  ),
                  Container(
                    width: 300,
                    color: Colors.grey,
                    child: ListTile(
                      leading: Icon(Icons.image),
                      title: Text('Gallery'),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 300,
                    color: Colors.grey,
                    child: ListTile(
                      leading: Icon(Icons.add_a_photo),
                      title: Text('Camera'),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
          showDialog(context: context, builder: (cctx) => ad);
        },
        child: Icon(Icons.camera),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
