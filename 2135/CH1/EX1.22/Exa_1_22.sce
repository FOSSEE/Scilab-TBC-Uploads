//Exa 1.22
clc;
clear;
close;
format('v',6);

//Given Data :
Rdegree=8314.3;//Universal Gas Constant
M=32;//Molecular weight of gas
p1=3*10^6;//N/m^2
V1=250*10^-3;//m^3
T1=20+273;//K
p2=1.8*10^6;//N/m^2
V2=V1;//m^3
T2=16+273;//K
R=Rdegree/M;//Nm/KgK
m1=p1*V1/R/T1;//Kg
m2=p2*V2/R/T2;//Kg
mass_used=m1-m2;//Kg
disp(mass_used,"Mass of oxygen used in Kg : ");
