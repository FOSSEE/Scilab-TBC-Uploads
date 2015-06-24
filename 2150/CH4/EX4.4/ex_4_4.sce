// Example 4.4
clc;
clear;
close;
// Given data
bita= 50;
I_E= 10;// in mA
I_B= 200*10^-3;// in mA
alfa= bita/(1+bita)
disp(alfa,"The value of alfa is : ")
I_C= alfa*I_E;// in mA
disp(I_C,"The value of I_C in mA using the value of alpha is : ")
I_C= bita*I_B;// in mA
disp(I_C,"The value of I_C in mA using the value of bita is : ")
