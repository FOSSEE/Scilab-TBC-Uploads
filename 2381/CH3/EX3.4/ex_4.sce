//Example 4 // Current and Capacity
clc;
clear;
close;
//given data :
E=110;// in V
R=10;// in ohm
L=1*10^-3;// in H
C=1*10^-6;// in F
n=10000;// in Hz
w=2*%pi*n;
I=E/sqrt(R^2+((w*L)-(1/(w*C)))^2);
disp(I,"The current ,I(A) = ")
L1=1/(w^2*C);
disp(L1,"The value of capacity,L1(F) = ")
//Capacitance  is calculated wrong in the textbook
