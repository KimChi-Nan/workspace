import 'dart:math';

// tính kết quả của phép toán 1 + 1/2^3 + 1/3^3 +...+ 1/n^3 (làm tròn 3 chữ số thập phân)
double b1CalculatedRecursively(int n){
  if(n == 1)
    return 1;
  else
    return ((b1CalculatedRecursively(n-1))+(1/pow(n, 3)));

}
//

// tính kết qyar của phép toán sau : 1 + 2/3 + 2/3 * 4/5 + 2/3 * 4/5 * 6/7 + ... + 2/3 * 4/5 * 6/7 * 8/9 *....* 2(n+1)/(2n + 3)
double recursive(int n){
  if(n == 1)
    return ((2/3)*(4/5));
  else
    return (recursive(n-1)*((2*(n+1))/(2*n+3)));
}

double b2CalculatedRecursively2(int n){
  double kq = 1 + 2/3;
     for (var i = 1; i <= n; i++) {
         kq += recursive(i);
     }
     return kq;
}


// nhập vào 3 số nguyên dương, phân loại tam giác được tạo thành có độ dài là 
// 3 số nhập vào.

void b3triangularClassification(int a,int b,int c){
   if(a + b > c || a + c > b || b + c> a)
 {
     if ( a == b && b == c)
       print('Đây là tam giác đều');
     else
      if( a == b || b == c || c == a ){
        if((a*a + b*b == c*c) || (b*b + c*c == a*a) || (c*c + a*a == b*b))
         print('Đây là tam giác vuông cân.');
        else
         print('Đây là tam giác cân');
     }
       else{
          if((a*a + b*b == c*c) || (b*b + c*c == a*a) || (c*c + a*a == b*b))
               print('Đây là tam giác vuông');
          else
               print('Đây là tam giác thường');
    }
  }
   else
     print('Đây không phải là tam giác');
}

// tính diện tích tam giác
double b4triangleArea(int a,int b,int c){
   return ((sqrt((a+b+c)*(a+b-c)*(b+c-a)*(c+a-b))/4));
}

// chuyển đổi kiểu tiền tệ từ 1 số nhập vào từ bàn phím
double b5currencyConverter(double t, bool type){
  // từ USD sang VND
    if(type)
       return t*23.025;
    else
    // ngược lại
       return t/23.025;
      
}

List<String> astring = ['cover','by','step','hello','world','all','and'];

List<String> b6findAllStrings(String char){
  List<String> kq =  new List<String>();
  for (var i in astring) {

    if(i.substring(0,1).toLowerCase() == char.toLowerCase())
       kq.add(i);
  }
  return kq;
}

void b7convert(String string)
{
  var str = string.split('_');
  List<String> kq = new List<String>();
  for (var i = 0; i < str.length; i++) {
    kq.add(str[i]);
  }

  for (var i in kq) {
    print(i);
  }
}

String b8convert()
{
  String kq ="";
  for (var i in astring) {
    kq +=i.toString() + "_";
  }
  return kq;
}

Map<String,String> map = {
  'zero' : 'Số không', 
  'one' : 'Số một', 
  'two':'Số hai', 
  'three':'Số ba', 
  'four':'Số bốn'
  };

Map<String,int> map2 = {
  'táo' : 100,
  'dưa hấu' : 500,
  'đào' : 600,
  'cam' : 425,
  'kim chi' : 5
};



void main(List<String> args) { 
   // nhập n lớn hơn 0
   int n = 3;
   double kq = b1CalculatedRecursively(n);
   print('Kết quả của phép toán đệ quy 1 + 1/2^3 + 1/3^3 +...+ 1/n^3 là : ${kq.toStringAsPrecision(4)}' );
   
   int n2 = 3;
   double kq2 = b2CalculatedRecursively2(n2);
   print('Kết quả của phép toán đệ quy 1 + 2/3 + 2/3 * 4/5 + 2/3 * 4/5 * 6/7 +...+ 2/3 * 4/5 * 6/7 * 8/9 *...* 2(n+1)/(2n+3) là : ${kq2.toStringAsPrecision(4)}');

  int a,b,c;
  a = 4;
  b = 4;
  c = 4;
  b3triangularClassification(a, b, c);
  double area = b4triangleArea(a, b, c);
  print('Diện tích hình tam giác có cạnh a = $a, b = $b, c = $c là : ${area.toStringAsPrecision(4)}');
  
  double t = 2;
  double kqcv = b5currencyConverter(t, true);
  print('Kết quả chuyển đổi $t USD sang VND là : $kqcv');

  var find = b6findAllStrings('a').toString();
  print('Tìm tất cả các chuỗi bắt đầu bằng kí tự a : $find');

  // String abc = "toBeComing";
  // String k = abc.substring(0,2);
  // print('$k'); 
  print('chuỗi sau khi chuyển thành mảng : ');
  b7convert('Hello_I_am_Iron_Man!');
  String chan = b8convert();
  print('$chan');

  map.forEach((key, value) {
    print('"$key" có giá trị "$value"');
  });

 map2.forEach((key, value) {
   print('"$key" có giá trị là $value');
 });
}