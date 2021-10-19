import 'package:on_exit/init.dart';

void main() async {
  onExit(() {
    print('on exit callback');
  });
  print('hi');
  await onExit.exit(0);
}
