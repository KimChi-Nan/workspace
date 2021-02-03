// nhập vào một giá trị là số nguyên dương ( chỉ nhận giá trị số nguyên dương ) và in ra kết quả.
void b1Input(){
  int nhap = 9;
  if( nhap is int)
    if(nhap >= 0)
       print('Số nhập vào là : $nhap');
    else
       print('Số được nhập phải lớn hơn hoặc bằng 0.');
  else
   print('Số được nhập phải là kiểu số nguyên.');
}

// Cho một giá trị n, khai báo và khởi tạo một mảng bao gồm n phần tử và in ra các phần tử trong mảng đó với n được 
// nhập từ bàn phím
List<int> number = [4,5,6,10,20,67,73,39,49,4,49,74,8,74];


// tìm các giá trị lớn nhất, nhỏ nhất
int b3_maxValue(){ int max = 0;
  for (var i in number) {
    if(i > max)
       max = i;
  }
  return max;
}


int b3MinValue(){
  int min = 1000000000;
  for (var i in number) {
    if(i<min)
    min = i;
  }
  return min;
}

// tìm các giá trị lớn nhất, nhỏ nhất
List<int> b4ReturnLocation(bool type){
  List<int> kq = new List<int>();
  int max = b3_maxValue();
  int min = b3MinValue();
  
   for (var i = 0; i < number.length; i++) {
     if(type){
          if(number[i] == b3_maxValue())
          kq.add(i);
        }
     else{
          if(number[i] == b3MinValue())
          kq.add(i);
     }
     }

  return kq;
}

// tính tổng các số là số chẵn, tính tổng các số là số lẻ. 
// tìm các số lẻ, tìm các số chẵn
int b5SumOfEvenNumber(){
    int sum = 0;
    for (var i in number) {
      if(i%2==0)
        sum += i;
    }
    return sum;
}

int b5SumOfOddNumber(){
  int sum = 0;
  for (var i in number) {
    if(i%2==1)
       sum +=i;
  }
  return sum;
}

// tìm các số chia hết cho 5 và 2 trong mảng ngẫu nhiên các phần tử số nguyên và tính tổng
int b6SumOfTheNumbersDivisibleByFiveAndTwo(){
  int sum = 0;
  for (var i in number) {
    if(i%5==0 && i%2 == 0)
       sum += i;
  }
  return sum;
}

// tính n giai thừa
int b7Factorials(int n){
  if(n==0 || n==1)
     return 1;
  else
     return (b7Factorials(n-1)*n);
}

// tìm phần tử cuối cùng là số chẵn
int b8LastEvenElement(){
  int last;
  for (var i = 0; i < number.length; i++) {
    if(i%2==0);
     last = number[i];
  }
  return last;
}

// tìm phần tử cuối cùng là số lẻ
int b9LastOddElement(){
  int last;
  for (var i = 0; i < number.length; i++) {
    if(i%2 == 1)
    last = number[i];
  }
  return last;
}

// nhập vào từ bàn phím một mảng các chuỗi, in ra thứ tự chuỗi trong mảng, giá trị của chuỗi, độ dài của chuỗi đó.
List<String> str = ['sad','mad','crazy','upset'];

void main(List<String> args) {
  b1Input();
 print('Các số trong mảng :');
 // number.forEach(print);
 for (var i = 0; i <number.length ; i++) {
   print(number[i]); }
  int c = b3_maxValue();
  print('Số lớn nhất trong mảng là : $c');
  int d = b3MinValue();
  print('Số nhỏ nhất trong mảng là : $d');

   var kq = b4ReturnLocation(true).toString();
  print('Số lớn nhất nằm ở vị trí : $kq');
    kq = b4ReturnLocation(false).toString();
  print('Số nhỏ nhất nằm ở vị trí : $kq');

   int kq2 = b5SumOfEvenNumber();
  print('Tổng các số chẵn trong mảng là : $kq2');
  kq2 = b5SumOfOddNumber();
  print('Tổng các số lẻ trong mảng là : $kq2');
  
  var even = number.where((n) => n%2 == 0).toList();
  print('Các số chẵn là : $even');

  var odd = number.where((n) => n%2 == 1).toList();
  print('Các số lẻ là : $odd');

  var divisible = number.where((e) => (e%5 == 0 && e%2 == 0)).toList();
  print('Các số chia hết cho 5 và chia hết cho 2 là : $divisible');
  kq2 = b6SumOfTheNumbersDivisibleByFiveAndTwo();
  print('Tổng của các số chia hết cho 5 và chia hết cho 2 là : $kq2');

  int factorials = 15;
  int kqfac = b7Factorials(factorials);
  print('Giai thừa của $factorials là : $kqfac');

  int vt = b8LastEvenElement();
  print('Số chẵn nằm vị trí cuối cùng trong mảng là : $vt');
   vt = b9LastOddElement();
  print('Số lẻ nằm vị trí cuối cùng trong mảng là : $vt');

  for (var i = 0; i < str.length; i++) {
    print('vị trí :'+ i.toString() + ', giá trị : ' + str[i].toString() + ', độ dài chuỗi : ' + str[i].length.toString());
    
  }

}