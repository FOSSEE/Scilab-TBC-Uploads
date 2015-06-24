//Exa 1.24
clc;
clear;
close;
format('v',6);

//Given Data :
p1=1;//bar
p2=0.45;//bar
R=287;//KJ/KgK
V=40;//m^3
V1=40;//m^3
V2=40;//m^3
T1=35+273;//K
T2=5+273;//K
m=p1*10^5*V1/R/T1-p2*10^5*V2/R/T2
disp(m,"Mass of air removed in Kg : ");
