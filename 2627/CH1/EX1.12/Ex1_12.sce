//Ex 1.12
clc;clear;close;
format('v',6);
R1=30;//ohm
R2=60;//ohm
R3=30;//ohm
I3=1;//A
I1=I3*(R2+R3)/R2;//A
I2=I1-I3;//A
disp(I1,"Current I1(A)");
disp(I2,"Current I2(A)");
