//Exa 1.21
clc;
clear;
close;
format('v',7);

//Given Data :
p=10;//bar
T=327+273;//K
M=42.4;
m=1;//Kg
Rdegree=8314.3;//Nm/KgK
R=Rdegree/M;//Nm/KgK
V=m*R*T/p/10^5;//m^3/Kg
disp(V,"Specific volume in m^3/Kg ; ");
rho=m/V;//Kg/m^3
disp(rho,"Density of gas in Kg/m^3 : ");
