//Example 3.2: Measured value of resistance
clc;
clear;
close;
//given data :
a=1;// in ohm
b=5;// in ohm
A=(1/a)+(1/b);
r=1/A;
I=0.1;// in A
V=r*I;
Mr=V/I;
disp(Mr,"Measured value of resistance,(ohm) = ")
