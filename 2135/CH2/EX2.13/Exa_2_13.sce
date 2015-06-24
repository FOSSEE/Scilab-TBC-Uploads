//Exa 2.13
clc;
clear;
close;
format('v',7);

//Given Data : 
V1=250;//litres
V2=250;//litres
p1=3;//Mpa
t1=20;//degree_centigrade
p2=1.8;//Mpa
t2=16;//degree_centigrade
Gamma=1.4;//
rho=1.43;//Kg/m^3
p=0.1013;//Mpa

V1=V1/1000;//m^3
V2=V2/1000;//m^3
T1=t1+273;//Kelvin
T2=t2+273;//Kelvin
//p=rho*R*T
T=0+273;//Kelvin
R=p*10^6/rho/T;//Nm/KgK
//p*V=m*R*T
m1=p1*10^6*V1/R/T1;//Kg
m2=p2*10^6*V2/R/T2;//Kg
Mass_oxygen=m1-m2;//Kg
disp(Mass_oxygen,"Mass of oxygen used in Kg : ");
//Cv*(Gamma-1)=R
Cv=R/(Gamma-1);//Nm/KgK
Q=m2*Cv*(t1-t2);//J
disp(Q,"Heat transfered in J : ");
