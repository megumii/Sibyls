import 'dart:html';
import 'dart:math' as math;

void main() {
 // querySelector('#sample_text_id')
    //..text = 'Click me!'
   // ..onClick.listen(reverseText);
 // querySelector('#input1').value='1';
  querySelector('#sample_text_id')
    ..text='Click me!'
    ..onClick.listen(randomSelectStu);
  querySelector('#button_for_add')
    ..text='Add them Up'
    ..onClick.listen(addThemUp);
  //querySelector('#sample_text_id2').text=addUp(1,2).toString();
}

void addThemUp (MouseEvent event){
  var x = int.parse(querySelector('#input1').value);
  var y = int.parse(querySelector('#input2').value);
  querySelector('#sample_text_id2').text=addUp(x,y).toString();
}
void reverseText(MouseEvent event) {
  var text = querySelector('#sample_text_id').text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector('#sample_text_id').text = buffer.toString();
}
int addUp(var x,var y){
  var z=x+y;
  return z;
}
void randomSelectStu(MouseEvent event){
  var stuMap = {
    0:'partridge',
    1:'turtledoves',
    2:'golden rings'
  };
  var random = new math.Random();
  var randomID = random.nextInt(3);
  var stuName = stuMap[randomID];
  querySelector('#sample_student_id').text=stuName;//+' '+
}
/*void randomSelectStu(MouseEvent event) {
  var stuMap={
    0:1213344345,
    1:6786876872
  };
  var random = new math.Random();
  var randomID=random.nextInt(2);
  var stuID=stuMap[randomID];
  querySelector('#sample_student_id').text =stuID.toString();
}*/