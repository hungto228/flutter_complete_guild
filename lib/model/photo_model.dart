const URL = "https://jsonplaceholder.typicode.com/photos";

class PhotosModel {
  var albumId;
  var id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PhotosModel.name(
      {this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  //nameCtontructor
  PhotosModel.fromJson(Map<String, dynamic> parsedjson) {
    id = parsedjson["id"];
    albumId = parsedjson["albumId"];
    title = parsedjson["title"];
    url = parsedjson["url"];
    thumbnailUrl = parsedjson["thumbnailUrl"];
  }
// static Future<dynamic> getAllApi() async {
//   Networkhelper networkhelper = Networkhelper(URL);
//   var photos = await networkhelper.getData();
//   return photos;
// }
}
