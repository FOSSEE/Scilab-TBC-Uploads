//Exa 1.33
clc;
clear;
close;
format('v',9);

//Given Data :
T1=300;//K
T2=2300;//K
Gamma=1.5;
m=1;//Kg
//Cp=0.85+0.0004*T+50*10^-5*T^2
H2subH1=integrate('m*(0.85+0.00004*T+5*10^-5*T^2)','T',T1,T2);//KJ/Kg
disp(H2subH1,"Change in enthalpy in KJ/Kg : ");
U2subU1=integrate('m*(0.85+0.00004*T+5*10^-5*T^2)/Gamma','T',T1,T2);//KJ/Kg
disp(U2subU1,"Change in internal energy in KJ : ");
