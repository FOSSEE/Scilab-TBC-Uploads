//Ex 1.3
clc;clear;close;
format('v',6);
Vs=100;//V(Supply voltage)
R1=40;//ohm
R2=50;//ohm
R3=70;//ohm
R=R1+R2+R3;//ohm(Equivalent resistance)
I=Vs/R;//A(Current in the circuit)
disp(I,"Circuit current(A)");
