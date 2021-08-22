import 'package:flutter/material.dart';
import 'package:flutter_complete_guild/model/photo_model.dart';

class ImageList extends StatelessWidget {
  final List<PhotosModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "${images[index].title}",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Image.network("${images[index].thumbnailUrl}")),
                  Expanded(
                      flex: 2, child: Image.network("${images[index].url}")),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
