// Exa 1.15
clc;
clear;
close;
// Given data
Rf=470;// in kohm
R1=4.3;// in kohm
R2=33;// in kohm
R3=33;// in kohm
Vi= 80;// in µV
Vi=Vi*10^-6;// in volt
A1= 1+Rf/R1;
A2=-Rf/R2;
A3= -Rf/R3;
A=A1*A2*A3;
Vo= A*Vi;// in volt
disp(Vo,"Output voltage in volts is : ")
