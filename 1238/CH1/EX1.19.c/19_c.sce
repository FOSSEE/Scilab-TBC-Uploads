//decimal to octal conversion//
//example 19.c//
clc
//clears the command window//
clear
//clears//
//decimal to octal conversion//
q=0;
b=0;
s=0;
//enter the decimal number to be converted//
a=11.9375;
d=modulo(a,1);//separating decimal and integer part//
a=floor(a);//removing decimal part//
 while (a>0)
 //taking integer part into a matrix and converting to equivalent octal//
 x=modulo(a,8)
 b=b+(10^q)*x
 a=a/8
 a=floor(a)
 q=q+1
    end
 for i=1:10
     //for values after decimal that should be converted to octal//
     d=d*8
     q=floor(d)
     s=s+q/(10^i);
     d=d-q
  end
k=b+s;
disp('the octal equivalent of the given decimal number is')
disp(k);//displaying the result//
