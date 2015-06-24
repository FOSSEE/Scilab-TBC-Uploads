//Example 5.2(a)

clear;

clc;

R=100*10^3;

C=1*10^(-9);

vo0=0;

IB=80*10^(-9);

IOS=20*10^(-9);

Vsat=13;

Rp=0;

Ip=((2*IB)+IOS)/2;

In=((2*IB)-IOS)/2;

vo1=(R*IB)/(R*C);

t=Vsat/vo1;

printf("Time taken by the op amp to enter saturation (t)=%.4f sec",t);