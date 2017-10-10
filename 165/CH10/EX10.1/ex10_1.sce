//Example 10.1
clc;
//Given Data
C1=600*10^-12;
C2=100*10^-12;
f1=2*10^6;
//Distributed Capacitance Cs
Cs=(C1-4*C2)/3;
disp(Cs,'Value of Distributed Capacitance is')
//We know the resonant frequency is 
//given by f1=1/(2*pi*(L(C1+CS))^.5), hence
L=1/(((2*%pi*f1)^2)*(C1+Cs));
printf('\nValue of inductance L is %.12f H',L)