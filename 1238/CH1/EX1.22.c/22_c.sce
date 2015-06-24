//subtraction using 2's complement//
//example 22.c//
clc
//clears the command window//
clear
// clears //
//converting first binary input to decimal//
p =1;
// initialising //
q =1;
z =0;
b =0;
w =0;
f =0;
//bin= input ( Enter the binary no to be converted to its decimal equivalent : )
//accepting the first binary input from user//
bin =0.01111;
bin=bin*100000
y=0;
for i=1:4
    x(i)=modulo(bin,10)
    y=y+(x(i)/(2^(6-i)))
    bin=bin/10
    bin=floor(bin)
end
d1=y
//converting second binary input to its complement decimal number//
a=.01001
a=a*100000
s=0;
for i=1:4
    x(i)=modulo(a,10)
    if x(i)==1 then
        x(i)=0
    else
        x(i)=1
    end
    s=s+(x(i)/(2^(6-i)))
    a=a/10
    a=floor(a)
end
s=s+.5
d2=s;//assigning the equivalent decimal value to d2//
d2=d2+.03125;
r=d1+d2;//result in decimal form//
r=r-bin2dec('1')
//converting to binary form//
q=0;
b=0;
s=0;
//enter the decimal number to be converted//
a=r;
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
disp('the subtraction of two binary numbers give:')
disp(k);//the result in binary form// 

