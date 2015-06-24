//Exa 2.5
clc;
clear;
close;
format('v',7);

//Given Data
T1=100;//degree_centigrade
T1=T1+273;//kelvin
T2=200;//degree_centigrade
T2=T2+273;//kelvin

delQbydelT=1.005;//KJ/k
//delWbydelT=(4-0.12*T);//KJ/k
Q=integrate('1.005','T',T1,T2);
W=integrate('4-0.12*T','T',T1,T2);
U2subU1=Q-W;//change in internal energy in KJ
disp(U2subU1,"Change in internal energy in KJ : ");
