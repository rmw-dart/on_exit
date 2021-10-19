<!-- 本文件由 ./readme.make.md 自动生成，请不要直接修改此文件 -->

# on_exit

simple log , can custom log output function

## use

```dart
import 'dart:io';
import 'package:on_exit/init.dart';

// import if you need custom output function
import 'package:on_exit/config.dart' show logConfig;

void main() async {
  // can use custom output function
  logConfig[1] = (stack, msg) {
    stderr.write(stack + " :\n💀" + msg + '\n');
  };

  log('version', 1.0);
  logw('warning');
  for (var i = 0; i < 3; ++i) {
    loge('something happended', Exception(i));
  }
  await Future.delayed(Duration(seconds: 1));
  log(123);
}

```
