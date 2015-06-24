//Exa 5.3
clc;
clear;
close;
format('v',6);

//Given Data :
m=5;//Kg
p=1;//bar
T0=20+273;//Kelvin
T1=23+273;//Kelvin
T2=227+273;//Kelvin
Cp=1.005;//J/KgK
deltaS=Cp*log(T1/T2);//KJ/KgK
deltaQ=Cp*(T2-T1);//KJ
A=m*(deltaQ+T0*deltaS);//KJ
disp(A,"Increase in availability due to heating in KJ : ");
