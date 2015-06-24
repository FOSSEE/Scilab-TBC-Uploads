//Exa 2.47
clc;
clear;
close;
format('v',6);

//Given Data : 
V1=6;//m^3
p1=20*100;//Kpa
T1=37+273;//K
p2=10*100;//Kpa
V2=V1;//m^3
R=0.287;//KJ/KgK
m1=p1*V1/R/T1;//Kg
//T2=T1*(p2/p1)^((Gamma-1)/Gamma)
Gamma=1.4;
T2=T1*(p2/p1)^((Gamma-1)/Gamma);//K
m2=p2*V2/R/T2;//Kg
m=m1-m2;//mass of air discharged in Kg
disp(m,"Mass of air discharged in Kg : ");
