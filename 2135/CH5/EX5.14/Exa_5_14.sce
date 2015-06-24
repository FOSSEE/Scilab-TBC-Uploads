//Exa 5.14
clc;
clear;
close;
format('v',6);

//Given Data :
m=3;//Kg
p1=3;//bar
T1=450;//Kelvin
Q=600;//KJ
Cv=0.81;//KJ/Kg
T0=300;//Kelvin
T=1500;//Kelvin
deltaSsource=Q/T;//KJ/K
//Q=m*Cv*(T2-T1)
T2=Q/m/Cv+T1;//Kelvin
A1=Q-T0*deltaSsource;//KJ
deltaSg=m*Cv*log(T2/T1);//KJ/K
A2=Q-T0*deltaSg;//KJ
Loss=A1-A2;//KJ
disp(Loss,"Loss in available energy due to heat transfer in KJ : ");
