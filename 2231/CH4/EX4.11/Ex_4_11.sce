//Example 4_11
clc;
clear;close;

//Given data: 
V=100;//V
R=0.5;//ohm
L=1/1000;//H
Ton=1/1000;//s
T=3/1000;//s

//Solution :
Toff=T-Ton;//s
alfa=Ton/T;//duty cycle
E=0;//V
Imax=V/R*[(1-exp(-alfa*T*R/L))/(1-exp(-T*R/L))]-E/R;//A
Imin=V/R*[(exp(alfa*T*R/L)-1)/(exp(T*R/L)-1)]-E/R;//A
disp(Imax,"Maximum current(A)");
disp(Imin,"Minimum current(A)");
Iavg=(Imax+Imin)/2;//A
disp(Iavg,"Average load current(A)");
Vavg=alfa*V;//V
disp(Vavg,"Average load voltage(V)");
