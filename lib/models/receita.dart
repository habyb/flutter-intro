class Receita {
  String? title;
  String? picture;
  String? portions;
  String? preparationTime;
  String? ingredients;
  String? preparationMode;

  Receita(
      {required this.title,
      required this.picture,
      required this.portions,
      required this.preparationTime,
      required this.ingredients,
      required this.preparationMode});

  Receita.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    picture = json['picture'];
    portions = json['portions'];
    preparationTime = json['preparation_time'];
    ingredients = json['ingredients'];
    preparationMode = json['preparation_mode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['picture'] = this.picture;
    data['portions'] = this.portions;
    data['preparation_time'] = this.preparationTime;
    data['ingredients'] = this.ingredients;
    data['preparation_mode'] = this.preparationMode;
    return data;
  }
}
