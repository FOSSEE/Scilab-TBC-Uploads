//scilab 5.4.1
//Windows 7 operating system
//chapter 17 Number Systems,Boolean Algebra,and Digital Circuits
clc
clear
q=0;
b=0;
s=0;
format('v',18);//increasing the precision to 18 .
a=4.625;
d=modulo(a,1);//separating the decimal part and the integer part
a=floor(a);//removing the decimal part
while(a>0)//taking integer part into a matrix and converting into equivalent binary
x=modulo(a,2);
b=b+(10^q)*x;
a=a/2;
a=floor(a);
q=q+1;
end
for i=1:10//for values after decimal point converting into binary
d=d*2;
q=floor(d);
s=s+q/(10^i);
if d>=1 then
d=d-1;
end
end
k=b+s;
printf ("The binary equivalent of 4.625 is = %f" ,k);
