//Exa 2.20
clc;
clear;
close;
format('v',8);

//Given Data : 
m=2;//Kg
T1=125+273;//kelvin
T2=30+273;//kelvin
W=152;//KJ
deltaH=-212.8;//KJ
Q=0;//KJ(For adiabatic process)
//Q=W+m*Cv*(T2-T!)
Cv=(Q-W)/m/(T2-T1);//KJ/KgK
disp(Cv,"Specific heat at constant volume in KJ/KgK : ");
//deltaH=m*Cp*(T2-T1);
Cp=deltaH/m/(T2-T1);//KJ/KgK
disp(Cp,"Specific heat at cinstant pressure in KJ/KgK : ");
R=Cp-Cv;//KJ/KgK
disp(R,"Characteristic gas constyant in KJ/KgK : ");
