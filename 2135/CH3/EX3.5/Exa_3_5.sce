//Exa 3.5
clc;
clear;
close;
format('v',6);

//Given Data :
Eta1=25/100;//efficiency
deltaT=20;//degree centigrade
//T2dash=T2-20;//K
//T1dash=T1;//K
deltaEta1=30/100;
Eta_dash=30/100;//efficiency
//Eta1/Eta_dash=(1-T2dash/T1dash)/(1-T2/T1)
//T1-T2=100;
//0.75*T1-T2=0;
A=[1 -1;0.75 -1];
B=[100;0];
X=A^-1*B;
//Solution for T1 and T2 by matrix
T1=X(1);//K
T2=X(2);//K
disp(T1,"Source temperature in K : ");
disp(T2,"Sink temperature in K : ");
