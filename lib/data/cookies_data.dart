import 'package:krumbs/models/cookie.dart';

class CookiesData {
  static const List<Cookie> premium = [
    Cookie(
      name: 'Chocolate chips',
      price: 20,
      image: 'assets/images/cookies3.png',
    ),
    Cookie(
      name: 'Oatmeal with raisins',
      price: 16,
      image: 'assets/images/cookies2.png',
    ),
  ];

  static const List<Cookie> offers = [
    Cookie(
      name: 'Double chocolat',
      price: 12,
      image: 'assets/images/cookies3.png',
    ),
  ];
}
