//Example 1.50.b // average deviation
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
disp(d,"the average deviation,d(kHz) = ")
