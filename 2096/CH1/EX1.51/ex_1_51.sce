
//Example 1.50.d // variance
clc;
clear;
close;
//given data :
n=10;
a=39.6;
b=39.9;
c=39.7;
d=39.9;
e=40;
f=39.8;
g=39.9;
h=39.8;
i=40.4;
j=39.7;
q=(a+b+c+d+e+f+g+h+i+j)/n;
d1=a-q;
d2=b-q;
d3=c-q;
d4=d-q;
d5=e-q;
d6=f-q;
d7=g-q;
d8=h-q;
d9=i-q;
d10=j-q;
d=(abs(d1)+abs(d2)+abs(d3)+abs(d4)+abs(d5)+abs(d6)+abs(d7)+abs(d8)+abs(d9)+abs(d10))/n;
s=sqrt(((d1^2)+(d2^2)+(d3^2)+(d4^2)+(d5^2)+(d6^2)+(d7^2)+(d8^2)+(d9^2)+(d10^2))/(n-1));
r1=0.6745*s;
rm=r1/sqrt(n-1);
R=i-a;
disp(q,"the arithmetic mean,q(degree celcius) = ")
disp(s,"the standard deviation(degree celcius) = ")
disp(r1,"probable error of one reading,r1(degree celcius) = ")
disp(rm,"probable error of mean,rm(degree celcius) = ")
disp(R,"range,R(degree celcius) = ")
