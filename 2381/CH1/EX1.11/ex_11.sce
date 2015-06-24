//Example 11 // 
clc;
clear;
close;
//given data :
K1=3;// in N/m
K2=2;// in N/m
m=0.050;// in kg
w=sqrt((K1+K2)/m);
n=w/(2*%pi);
disp(n,"(i). The frequency,n(oscillations/sec) = ")
A=0.004;// in m
E=(1/2)*A^2*(K1+K2);
disp(E,"(ii). The energy,E(J) = ")
v=sqrt(2*E/m);
disp(v,"(iii). The velocity,v(m/s) = ")
