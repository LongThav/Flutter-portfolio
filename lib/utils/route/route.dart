import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:project/utils/route/route_name.dart';

import '../../views/home_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.home,
          page: () => const HomeView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.rightToLeftWithFade,
        ),
      ];
}
