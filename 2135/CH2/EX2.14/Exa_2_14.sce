//Exa 2.14
clc;
clear;
close;
format('v',7);

//Given Data : 
m=50/1000;//Kg
t1=14;//degree_centigrade
t2=74;//degree_centigrade
t_heating=300;//sec
Pheater=10.04;//Watts
Gamma=1.4;


Q=Pheater*t_heating;//J
//Q=m*Cp*(t2-t1)
Cp=Q/m/(t2-t1);//J/KgK
disp(Cp,"Specific heat of air in J/KgK : ");
//Cp*(1-1/Gamma)=R
R=Cp*(1-1/Gamma);//Gas Constant in Nm/KgK
disp(R,"Gas constant of air in Nm/KgK : ");
//p=rho*R*T
p=0.1;//Mpa
T=0+273;//kelvin
rho=p*10^6/R/T;//Kg/m^3
disp(rho,"Density of air in Kg/m^3 : ");
