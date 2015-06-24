//finding digital output in binary form//
//example 25//
clc
//clears the command window//;
clear
//clears//
V=1.085;//analog input voltage//
R=20*10^-3;//resolution//
n=V/R;//no of steps//
n=round(n);//so that output voltage produced is less than analog input voltage//
num=dec2bin(n,8);//converting to binary//
disp('digital output:')
disp(num);//displaying result in binary form//
