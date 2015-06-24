//Example 1.50.d // variance
clc;
clear;
close;
//given data :
n=8;
a=412;
b=428;
c=423;
d=415;
e=426;
f=411;
g=423;
h=416;
q=(a+b+c+d+e+f+g+h)/n;
d1=a-q;
d2=b-q;
d3=c-q;
d4=d-q;
d5=e-q;
d6=f-q;
d7=g-q;
d8=h-q;
d=(abs(d1)+abs(d2)+abs(d3)+abs(d4)+abs(d5)+abs(d6)+abs(d7)+abs(d8))/n;
s=sqrt(((d1^2)+(d2^2)+(d3^2)+(d4^2)+(d5^2)+(d6^2)+(d7^2)+(d8^2))/(n-1));
V=s^2;
disp(V,"the variance,V  (kHz)^2 = ")
