class ListBook {
  String? image;
  String? title;
  String? percent;

  ListBook({required this.image, required this.title, required this.percent});

  static List<ListBook> listDate = [
    ListBook(image: 'assets/image/b.png', title: 'Name of Book', percent: '60'),
    ListBook(
        image: 'assets/image/b2.png', title: 'Name of Book', percent: '60'),
    ListBook(image: 'assets/image/b2.png', title: 'Name of Book', percent: '60')
  ];
}

class ListBookGrid {
  String? image;
  String? title;
  int? strar;

  ListBookGrid({required this.image, required this.title, required this.strar});

  static List<ListBookGrid> gridDate = [
    ListBookGrid(image: 'assets/image/b.png', title: 'Name of Book', strar: 4),
    ListBookGrid(image: 'assets/image/b2.png', title: 'Name of Book', strar: 3),
    ListBookGrid(image: 'assets/image/b2.png', title: 'Name of Book', strar: 2),
    ListBookGrid(image: 'assets/image/b2.png', title: 'Name of Book', strar: 5),
    ListBookGrid(image: 'assets/image/b2.png', title: 'Name of Book', strar: 5),
    ListBookGrid(image: 'assets/image/b2.png', title: 'Name of Book', strar: 2),
    ListBookGrid(image: 'assets/image/b2.png', title: 'Name of Book', strar: 1),
    ListBookGrid(image: 'assets/image/b2.png', title: 'Name of Book', strar: 0),
  ];
}
