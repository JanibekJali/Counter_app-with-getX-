import 'package:counter_app/app_data/services/app_services.dart';

class AppRepo {
  static int increment(int number) {
    return AppServices.increment(number);
  }

  static int decrement(int number) {
    return AppServices.decrement(number);
  }
}
