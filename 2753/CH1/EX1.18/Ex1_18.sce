//Example 1.18: 
clc;
clear;
close;
//given data :
format('v',5)
k=1.38*10^-23;// constant
T=27+273;// in K
eta=2;
e=1.6*10^-19;// in C
Vt=(k*T/e);// in V
V=0.5;// in V
Ir=10^-6;// in A
I=(Ir*10^3*(exp(V/(eta*Vt))-1));// in A
R_dc=V*10^3/I;
disp(R_dc,"static resistance,R_dc(ohm) = ")
R_ac=(eta*k*T)/(e*I*10^-3);
format('v',5)
disp(R_ac,"Dynamic resistance,R_ac(ohm) = ")
// answer is wrong in textbook
