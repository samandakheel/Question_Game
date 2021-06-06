import 'package:question_game/question.dart';

class AppQuestion {
  List<Question> questionGroup = [
    Question('عدد الكواكب في المجموعة الشمسية هم ثمانية كواكب',
        'assets/images/image-1.jpg', true),
    Question('قط من الحيوانات الاليفة ', 'assets/images/image-2.jpg', true),
    Question('صين تقع في قارة افريقيا ', 'assets/images/image-3.jpg', false),
    Question('الارض مسطحة و ليست كروية', 'assets/images/image-4.jpg', false),
    Question('باستطاعة الانسان العيش بدون اللحوم ', 'assets/images/image-5.jpg',
        true),
    Question('الشمس تدور حول الارض و الارض تدور حول القمر ',
        'assets/images/image-6.jpg', false),
    Question("الحيوانات لاتشعر بل الم ", 'assets/images/image-7.jpg', false),
  ];
}
