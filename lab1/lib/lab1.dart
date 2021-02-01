import 'dart:io';
import 'dart:math';

double b2_CalculationFunction(String k,double a,double b)
{
  double kq;
     switch (k) {
      case '+':
         kq = a + b;
         break;
      case '-':
        kq =  a - b;
         break;
      case '*':
        kq = a*b;
         break;
      case '/':
         kq = a/b;
         break;
      default:
      print('Kí tự nhập phép toán chưa đúng, nhập lại !!!');
      break;

     }
     return kq;
}

double b3_Math(double a,double b)
{
    return a*a + b;
}

int b4_DivisionInt(int a, int b)
{
  int c;
  c = (a~/b).toInt();
  return c;
}



 double b5_CalculationDifferentFromDataTypes(String k,int a,double b)
{
  double kq;
     switch (k) {
      case '+':
         kq = a + b;
         break;
      case '-':
        kq =  a - b;
         break;
      case '*':
        kq = a*b;
         break;
      case '/':
         kq = a/b;
         break;
     }
     return kq;
}

void convertDataTypes()
{
   int a;
   a = 10;
   double b;
   b = double.maxFinite;
   int c;
   c = (a~/b).toInt();
   double d;
   d = a.toDouble();
   a = b.toInt();
   print('a = $a, b = $b, c = $c, d = $d');
}
void main(List<String> args) {
String k = "+";
double a = 7.8;
double b = 10.55;

double kq;


kq = b2_CalculationFunction(k, a, b);
print('Kết quả của phép tính $a $k $b là : $kq');

double kq2;
kq2 = b3_Math(a, b);
print('Kết quả của phép tính a*a + b, với a = $a và b = $b là : $kq2');
int kq3;
kq3 = b4_DivisionInt(a.toInt(), b.toInt());
print('Kết quả của phép tính a/b (trả về kiểu số nguyên), với a = $a, b = $b là : $kq3');
print('Kết luận phép tính a/b trả về loại int, là nó chỉ lấy phần nguyên và không làm tròn phần dư.');

double kq4;
kq4 = b5_CalculationDifferentFromDataTypes(k, a.toInt(), b);
print('Kết quả của phép tính ${a.toInt()} $k $b là : $kq4');

print('So sánh sự khác nhau giữa biến toàn cục và biến cục bộ !');
print('So sánh : \n - Biến cục bộ: \n+ Được khai báo trong phạm vi một hàm. Giá trị của biến chỉ được sử dụng trong phạm vi hàm đó, không thể sử dụng bởi hàm khác.');
print('\t+ Biến sẽ bị hủy sau khi hàm thực hiện xong công việc của mình. Biến được khởi tạo có không có giá trị (null), phải tự khởi tạo giá trị cho biến.');
print('- Biến toàn cục: \n+ Được khai báo ngoài hàm, có thể được khai báo trong hàm main(). Ví dụ nếu khai báo một biến trong hàm mian thì nó có thể được dùng chung cho tất cả các hàm có trong main().');
print('+ Giá trị của biến được sử dụng chung cho tất cả các hàm, nếu truyền biến vào hàm bằng cách truyền tham chiếu thì giá trị của biến sẽ thay đổi. ');
print('+ Biến không bị hủy sau khi hàm kết thúc, biến chỉ bị hủy khi chương trình đã dừng.');

convertDataTypes();

print('Câu hỏi : làm sao để nhân hai số có giá trị lớn hơn 2^64 ?');
print('Trả lời : tràn số, không thể nhân được');

}
