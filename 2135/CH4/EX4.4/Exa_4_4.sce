//Exa 4.4
clc;
clear;
close;
format('v',6);

//Given Data :
deltaS=5;//KJ/KgK
W=2000;//KJ/Kg
T1=327+273;//Kelvin
Q1=deltaS*T1;//KJ/Kg
Q2=Q1-W;//KJ/Kg
Eta=W/Q1*100;//%
disp(Eta,"Efficiency in % : ");
T2=Q2/Q1*T1;//K
disp(T2,"Lowest temperature in Kelvin : ");
