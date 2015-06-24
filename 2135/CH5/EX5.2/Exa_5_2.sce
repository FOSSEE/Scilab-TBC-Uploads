//Exa 5.2
clc;
clear;
close;
format('v',6);

//Given Data :
m=2;//Kg
T1=300+273;//Kelvin
T2=150+273;//Kelvin
T0=20+273;//Kelvin
Cp=0.45;//KJ/KgK
deltaQ=m*Cp*(T1-T2);//KJ
deltaS=m*Cp*log(T1/T2);//KJ/K
A=deltaQ-T0*deltaS;//KJ
disp(A,"Reversible work or Available energy in KJ : ");
UA=T0*deltaS;//KJ
disp(UA,"Irreversibility in KJ : ");
//Irreversibilty is not calculated in the book and asked in the question.
