//Exa 4.3
clc;
clear;
close;
format('v',6);

//Given Data :
V1=10;//m^3
T1=175+273;//Kelvin
T2=36+273;//Kelvin
p1=5;//bar
p2=1;//bar
R=287;//KJ/KgK
Cp=1.005;//KJ/KgK
//p*V=m*R*T
m=p1*10^5*V1/R/T1;//Kg
deltaS=m*Cp*log(T2/T1)+m*R/1000*log(p1/p2);//KJ/K
disp(deltaS,"Entropy change in KJ/K :  ");
