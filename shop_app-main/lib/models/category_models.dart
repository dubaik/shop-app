class Category {
  final int id;
  final String title;
  final String image;
  final String details;

  Category({required this.image, required this.title, required this.id, required this.details});
}

const List sample_data = [
  {
    "id": 1,
    "title": "Electronics",
    "details": 'In this section, we have many modern electrical appliances at the best price. Do not hesitate to enter and buy what you need',
    "image": 'assets/images/category1.png',
  },
  {
    "id": 2,
    "title": "Sports",
    "details": 'The sports section contains kits for world clubs in addition to balls for various sports in addition to shoes from international brands such as Adidas and Nike',
    "image": 'assets/images/category2.png',
  },
  {
    "id": 3,
    "title": "Health & Beauty",
    "details": 'In the skin care and health department, we have many high-quality health ointments, as well as make-up from international brands. Browse and learn more about this section.',
    "image": 'assets/images/category3.png',
  },
  {
    "id": 4,
    "title": "Business",
    "details": 'In the field of business and finance, we have different varieties and have international certificates, and you can start changing your life from here',
    "image": 'assets/images/category4.png',
  },
  {
    "id": 5,
    "title": "Home & Garden",
    "details": 'This store has many tools that help you maintain the glasses of your home garden and its beauty, and there are wonderful home furnishings at a symbolic price',
    "image": 'assets/images/category5.png',
  },
];
