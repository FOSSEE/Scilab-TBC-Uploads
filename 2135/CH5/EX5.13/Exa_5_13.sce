//Exa 5.13
clc;
clear;
close;
format('v',6);

//Given Data :
mg=5;//Kg
p1=3;//bar
T1=500;//Kelvin
Q=500;//KJ
Cv=0.8;//KJ/Kg
T0=300;//Kelvin
T=1300;//Kelvin
//Q=mg*Cv*(T2-T1)
T2=Q/mg/Cv+T1;//Kelvin
A1=Q-T0*Q/T;//KJ
deltaSg=mg*Cv*log(T2/T1);//KJ/K
Ag=Q-T0*deltaSg;//KJ
Loss=A1-Ag;//KJ
disp(Loss,"Loss of Availability due to heat transfer in KJ : ");
