//Exa 4.6
clc;
clear;
close;
format('v',7);

//Given Data :
Tc=35+273;//K
W=500;//KJ
T1=308;//K
T2=308;//K
T0=15+273;//K
Q=W;//KJ
deltaS1=0;//as heat supplied is zero
deltaS2=Q/T0;//KJ/K
disp(deltaS2,"Change in entropy in KJ/K : ");
