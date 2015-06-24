//division of two binary numbers//
//example 17.a//
clc
//clears the command window//
clear
// clears //;//decimal equivalent of the first binary number//
//bin=1st input ( Enter the binary no to be converted to its decimal equivalent : )
//accepting the binary input from user//
bin ='1111001';//1st input//
x1=bin2dec(bin)
bin='1001';//2nd input//
x2=bin2dec(bin)
res=x1/x2;//division//
q=0;
b=0;
s=0;
//enter the decimal number to be converted//
a=res;
d=modulo(a,1);//separating decimal and integer part//
a=floor(a);//removing decimal part//
 while (a>0)
 //taking integer part into a matrix and converting to equivalent binary//
 x=modulo(a,2)
 b=b+(10^q)*x
 a=a/2
 a=floor(a)
 q=q+1
    end
 for i=1:10
 //for values after decimal that should be converted to binary//
 d=d*2
 q=floor(d)
 s=s+q/(10^i);
 if d>=1 then
    d=d-1   
  end
 end
k=b+s;
disp('the division of two numbers give:')
disp(k);//displaying the result//
