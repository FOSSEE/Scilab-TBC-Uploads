//Ex 6.9
clc;clear;close;
n=8;//no. of bits
f=1*10^6;//Hz(Clock frequency)
TC=1/f*(n+1);//seconds
disp(TC*10^6,"Conversion time in micro seconds");
