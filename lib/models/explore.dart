class Explore {
  final String imgpath;
  final String name;
  final int count;

  Explore({
    this.imgpath,
    this.name,
    this.count,
  });
  static List<Explore> explore = [
    Explore(
      imgpath: "lamp.svg",
      name: "Lamps",
      count: 303,
    ),
    Explore(
      imgpath: "lamp-2.svg",
      name: "Nightlamps",
      count: 2832,
    ),
    Explore(
      imgpath: "sofa.svg",
      name: "sofa",
      count: 1422,
    ),
    Explore(
      imgpath: "purchase.svg",
      name: "others",
      count: 225,
    ),
  ];
}
