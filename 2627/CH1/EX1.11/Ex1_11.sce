//Ex 1.11
clc;clear;close;
format('v',6);
I1=3;//A
I3=1;//A
I6=1;//A
//I1-I2-I3=0//from KCL at point a
I2=I1-I3;//A
//I2+I4-I6=0//from KCL at point b
I4=I6-I2;//A
//I3-I4-I5=0//from KCL at point c
I5=I3-I4;//A
disp(I2,"Current I2(A)");
disp(I4,"Current I4(A)");
disp(I5,"Current I5(A)");
