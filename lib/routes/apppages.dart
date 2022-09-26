import 'package:analog_clock/routes/approutes.dart';
import 'package:analog_clock/screens/homescreen/home_screen.dart';
import 'package:analog_clock/screens/homescreen/homebinding.dart';
import 'package:get/get.dart';

appRoutes() => [
      //  sign in screen
      GetPage(
        name: PagesNames.homeScreen,
        page: () => const HomeScreen(),
        middlewares: [MyMiddelware()],
        binding: HomeBinding(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    // ignore: avoid_print
    print(page?.name);
    return super.onPageCalled(page);
  }
}
