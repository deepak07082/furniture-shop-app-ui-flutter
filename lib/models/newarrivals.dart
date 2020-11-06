class NewArrivals {
  final String imgpath;
  final String name;
  final double prize;
  final bool fav;
  NewArrivals({
    this.imgpath,
    this.name,
    this.prize,
    this.fav,
  });
  static List<NewArrivals> newarrivals= [
    NewArrivals(
      fav: false,
      imgpath: "i4.jpg",
      name: "Nacy Table",
      prize: 30,
    ),
    NewArrivals(
      fav: true,
      imgpath: "i6.jpg",
      name: "Table wood pine",
      prize: 28,
    ),
    NewArrivals(
      fav: false,
      imgpath: "i7.jpg",
      name: "Daisy Table",
      prize: 25,
    ),
    NewArrivals(
      fav: false,
      imgpath: "i8.jpg",
      name: "Teapot with Blacktea ",
      prize: 14,
    ),
    NewArrivals(
      fav: true,
      imgpath: "i4.jpg",
      name: "Single Table",
      prize: 30,
    ),
    NewArrivals(
      fav: false,
      imgpath: "i5.jpg",
      name: "Single Table",
      prize: 35,
    ),
  ];
}