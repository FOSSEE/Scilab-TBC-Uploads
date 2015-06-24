//Exa 1.36
clc;
clear;
close;
format('v',7);

//Given Data :
pc=37.7;//bar
Tc=132.5;//K
vc=0.093;//m^3Kgmol
R=287;//Nm/KgK
m=10;//Kg
T=300;//K
V=0.3;//m^3
a=27*R^2*Tc^2/64/pc/10^5;
b=R*Tc/8/pc/10^5;//
//(p+a/V^2)*(V-b)=R*T
p=R*T/(V-b)-a/V^2;//N/m^2
p=p/10^5;//bar
disp(p,"Pressure exerted by air in bar : ");
