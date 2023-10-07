class ListData {
  String? id;
  String? imageUrl;
  String? title;

  ListData({this.id, this.imageUrl, this.title});

  ListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['image_url'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image_url'] = this.imageUrl;
    data['title'] = this.title;
    return data;
  }
}
