//Exa 5.10
clc;
clear;
close;
format('v',8);

//Given Data :
p0=1;//bar
T0=17+273;//Kelvin
T1=1817+273;//Kelvin
Cp=1;//KJ/KgK
deltaQ=Cp*(T1-T0);//KJ/Kg
deltaS=Cp*log(T0/T1);//KJ/KgK
deltaS_fluid=-deltaS;//KJ/KgK(As deltaS_surrounding=0)
A=deltaQ-T0*deltaS_fluid;//KJ
disp(A,"Availability of hot products in KJ : ");
