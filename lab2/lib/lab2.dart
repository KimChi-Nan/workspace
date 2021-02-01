void b1_Input()
{
  int nhap = 9;
  if( nhap is int)
    if(nhap >= 0)
       print('Số nhập vào là : $nhap');
    else
       print('Số được nhập phải lớn hơn hoặc bằng 0.');
  else
   print('Số được nhập phải là kiểu số nguyên.');
}
List<int> number = [4,5,6,10,20,67,73,39,49,4,49,74,8,74];

int b3_maxValue()
{ int max = 0;
  for (var i in number) {
    if(i > max)
       max = i;
  }
  return max;
}


int b3_minValue()
{
  int min = 1000000000;
  for (var i in number) {
    if(i<min)
    min = i;
  }
  return min;
}

List<int> b4_returnLocation(bool type)
{
  List<int> kq = new List<int>();
  int max = b3_maxValue();
  int min = b3_minValue();
  if(type)
  {
   for (var i = 0; i < number.length; i++) {
    if(number[i] == b3_maxValue())
      kq.add(i);
  } 
  }
  else
  {
    for (var i = 0; i < number.length; i++) {
    if(number[i] == b3_minValue())
      kq.add(i);
    } 
  }
  return kq;
}

int b5_sumOfEvenNumber()
{
  int sum = 0;
    for (var i in number) {
      if(i%2==0)
        sum += i;
    }
    return sum;
}

int b5_sumOfOddNumber()
{
  int sum = 0;
  for (var i in number) {
    if(i%2==1)
       sum +=i;
  }
  return sum;
}

int b6_sumOfTheNumbersDivisibleByFiveAndTwo()
{
  int sum = 0;
  for (var i in number) {
    if(i%5==0 && i%2 == 0)
       sum += i;
  }
  return sum;
}

int b7_factorials(int n)
{
  if(n==0 || n==1)
     return 1;
  else
     return (b7_factorials(n-1)*n);
}

int b8_lastEvenElement()
{
  int last;
  for (var i = 0; i < number.length; i++) {
    if(i%2==0);
     last = number[i];
  }
  return last;
}

int b9_lastOddElement()
{
  int last;
  for (var i = 0; i < number.length; i++) {
    if(i%2 == 1)
    last = number[i];
  }
  return last;
}

List<String> str = ['sad','mad','crazy','upset'];
void main(List<String> args) {
  b1_Input();
 print('Các số trong mảng :');
 // number.forEach(print);
 for (var i = 0; i <number.length ; i++) {
   print(number[i]); }
  int c = b3_maxValue();
  print('Số lớn nhất trong mảng là : $c');
  int d = b3_minValue();
  print('Số nhỏ nhất trong mảng là : $d');

   var kq = b4_returnLocation(true).toString();
  print('Số lớn nhất nằm ở vị trí : $kq');
    kq = b4_returnLocation(false).toString();
  print('Số nhỏ nhất nằm ở vị trí : $kq');

   int kq2 = b5_sumOfEvenNumber();
  print('Tổng các số chẵn trong mảng là : $kq2');
  kq2 = b5_sumOfOddNumber();
  print('Tổng các số lẻ trong mảng là : $kq2');
  
  var even = number.where((n) => n%2 == 0).toList();
  print('Các số chẵn là : $even');

  var odd = number.where((n) => n%2 == 1).toList();
  print('Các số lẻ là : $odd');

  var divisible = number.where((e) => (e%5 == 0 && e%2 == 0)).toList();
  print('Các số chia hết cho 5 và chia hết cho 2 là : $divisible');
  kq2 = b6_sumOfTheNumbersDivisibleByFiveAndTwo();
  print('Tổng của các số chia hết cho 5 và chia hết cho 2 là : $kq2');

  int factorials = 15;
  int kqfac = b7_factorials(factorials);
  print('Giai thừa của $factorials là : $kqfac');

  int vt = b8_lastEvenElement();
  print('Số chẵn nằm vị trí cuối cùng trong mảng là : $vt');
   vt = b9_lastOddElement();
  print('Số lẻ nằm vị trí cuối cùng trong mảng là : $vt');

  for (var i = 0; i < str.length; i++) {
    print('vị trí :'+ i.toString() + ', giá trị : ' + str[i].toString() + ', độ dài chuỗi : ' + str[i].length.toString());
    
  }

}