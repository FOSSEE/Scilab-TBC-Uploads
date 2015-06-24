//Exa 5.19
clc;
clear;
close;
//Given data :
L=80;//km
f=50;//Hz
Z=(0.15+%i*0.78)*L;//ohm
Y=(%i*5*10^-6)*L;//mho
A=1+1/2*Y*Z;//parameter of 3-phase line
D=A;//parameter of 3-phase line
B=Z*(1+1/4*Y*Z);//parameter of 3-phase line
C=Y;//parameter of 3-phase line
disp(A,"Parameter A : ");
disp(B,"Parameter B : ");
disp(C,"Parameter C : ");
disp(D,"Parameter D : ");
//Answer of B is wrong in the book.
