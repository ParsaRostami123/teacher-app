class ContentOnboard {
  String image;
  String title;
  String discription;

  ContentOnboard({
    required this.image,
    required this.title,
    required this.discription,
  });
}

List<ContentOnboard> contents = [
  ContentOnboard(
    image: 'assets/images/teacher1.jpg',
    title: 'تست میکنم ای حالت رو',
    discription:
        'همینطوری یک متنی مینویسم ببینم چی میشه میخوام تست کنم این حات رو در حالی که اصلا به درد نمیخوره',
  ),
  ContentOnboard(
    image: 'assets/images/teacher2.jpg',
    title: 'تست میکنم ای حالت 2رو',
    discription:
        'همینطوری یک متنی مینویسم ببینم چی میشه میخوام تست کنم این حات رو در حالی که اصلا به درد نمیخوره',
  ),
  ContentOnboard(
    image: 'assets/images/teacher3.jpg',
    title: 'تست میکنم ای حالت 3رو',
    discription:
        'همینطوری یک متنی مینویسم ببینم چی میشه میخوام تست کنم این حات رو در حالی که اصلا به درد نمیخوره',
  ),
];
