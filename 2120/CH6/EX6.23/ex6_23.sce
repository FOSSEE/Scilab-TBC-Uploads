//Exa 6.23
clc;
clear;
close;
// Given data
T1= 180+273;// in K
T2= 20+273;// in K
// W_A/Q1= 1-T3/T1      (i)
// W_B/QB= 1-T2/T3      (ii)
// W_A= W_B                 (iii)
// Q1= Q_B+W_A          (iv)
// From eq(i),(ii),(iii) and (iv)
T3= (T1+T2)/2;// in K
disp(T3-273,"The intermediate temperature in °C is : ")


