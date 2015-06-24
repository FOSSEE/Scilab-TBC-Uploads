//Ex 1.6
clc;clear;close;
format('v',5);
V=12;//V
R1=6.8;//ohm
R2=4.7;//ohm
R3=2.2;//ohm
R=1/(1/R1+1/R2+1/R3);//ohm(Effective resistance)
I=V/R;//A(Supply current)
disp(R,"Effective resistance(ohm)")
disp(I,"Supply current(A)");
