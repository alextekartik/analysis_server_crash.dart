import 'package:cv/cv.dart';
import 'package:test/test.dart';

void main() {
  test('dummy', () {});
}

abstract class MyModel implements CvModel {}

mixin MyModelMixin implements MyModel {}

// This makes dart analyzer crashes, if you comment it, it is ok
abstract class MyModelBase extends CvModelBase
    with MyModelMixin
    implements MyModel {}
