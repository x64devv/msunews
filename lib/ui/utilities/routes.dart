import 'package:get/get.dart';
import 'package:jin_jin/screens/dashboard/activities/single_article.dart';

import '../../screens/auth/auth.dart';
import '../../screens/dashboard/dashboard.dart';

class GetRoutes{
  static const String auth = '/auth';
  static const String dashboard = '/dashboard';
  static const String single_article = '/single_article';

  static List<GetPage> routes = [
    GetPage(
        name: auth,
        page: () => Authentication()
    ),
    GetPage(
        name: dashboard,
        page: () => Dashboard()
    ),
    GetPage(
        name: single_article,
        page: () => SingleArticle()
    ),
  ];
}