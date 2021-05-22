class PopularDestinationModel {
  String name;
  String country;
  String image;

  PopularDestinationModel(this.name, this.country, this.image);
}

List<PopularDestinationModel> populars = popularsData
    .map((item) =>
        PopularDestinationModel(item['name'], item['country'], item['image']))
    .toList();

var popularsData = [
  {"name": "402-2", "country": "Qonun", "image": "assets/images/destination_bali.png"},
  {"name": "Mukofot", "country": "Faxriy donor", "image": "assets/images/destination_bali.png"},
  {"name": "Imtiyozlar", "country": "Donorlarga berilgan ...", "image": "assets/images/destination_bali.png"},

  {"name": "07-6-15", "country": "Donorlik dasturi", "image": "assets/images/destination_bali.png"},
];
