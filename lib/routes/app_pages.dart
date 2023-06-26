import 'package:get/get.dart';
import '../pages/calculator/calculator_binding.dart';
import '../pages/calculator/calculator_view.dart';
import '../pages/home/home_binding.dart';
import '../pages/home/home_view.dart';
part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.Calculator,
      page: () => const CalculatorPage(),
      binding: CalculatorBinding(),
    ),
    // GetPage(
    //   name: Routes.AUTH,
    //   page: () => AuthScreen(),
    //   binding: AuthBinding(),
    //   children: [
    //     GetPage(name: Routes.REGISTER, page: () => RegisterScreen()),
    //     GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
    //   ],
    // ),
    // GetPage(name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding(), children: [
    //   GetPage(name: Routes.CARDS, page: () => CardsScreen()),
    // ]),
  ];
}
