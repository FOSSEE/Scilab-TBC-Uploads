//Example 4_12
clc;
clear;close;

//Given data: 
V=100;//V
E=12;//V
L=0.8/1000;//H
R=0.2;//ohm
T=2.4/1000;//s
Ton=1/1000;//s

//Solution :
alfa=Ton/T;//duty cycle
Imax=V/R*[(1-exp(-alfa*T*R/L))/(1-exp(-T*R/L))];//A
Imin=V/R*[(exp(alfa*T*R/L)-1)/(exp(T*R/L)-1)];//A
disp(Imax,"Maximum current(A)");
disp(Imin,"Minimum current(A)");
Vavg=alfa*V;//V
disp(Vavg,"Average load voltage(V)");
