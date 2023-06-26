import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  var expressions = "0".obs;

  Future<void> increment(buttonText) async {
    switch (buttonText) {
      case '=':
        calculate(expressions.value);
        break;
      case 'AC':
        expressions.value = "0";
        break;
      case '+/-':
        calculate('-${expressions.value}');
        break;
      case '%':
        calculate('${expressions.value}/100');
        break;
      default:
        if (expressions.value == '0') {
          expressions.value = buttonText;
        } else if (expressions.value.length > 24) {
          expressions.value = expressions.value;
        } else {
          expressions.value = expressions.value + buttonText;
        }
    }
  }

  void calculate(String equation) {
    try {
      final p = Parser();
      Expression exp = p.parse(equation);
      final context = ContextModel();
      final output = exp.evaluate(EvaluationType.REAL, context);
      num result = output % 1 == 0 ? output.toInt() : output;
      expressions.value = result.toString();
    } catch (e) {
      increment('AC');
    }
  }

  @override
  void onInit() {
    print('控制器初始化');
    super.onInit();
  }

  @override
  void onReady() async {
    print('页面准备完毕');
    super.onReady();
  }

  @override
  void onClose() {
    print('控制器被销毁');
    super.onClose();
  }
}
