// Example 4.8
clc;
clear;
close;
format('v',6);
// Given data
A_dB= 20;// peak gain in dB
A= 10^(A_dB/20);// peak gain
omega= 10000;// in rad/second
C= 0.01;// in µF
C= C*10^-6;// in F
Rf= 10;// in kΩ
// Vout/V1= Rf/R1= A
R1= Rf/A;// in kΩ
disp(Rf,"The value of Rf in kΩ is : ");
disp(R1,"The value of R1 in kΩ is : ");





