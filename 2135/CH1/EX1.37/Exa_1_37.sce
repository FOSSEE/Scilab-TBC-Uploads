//Exa 1.37
clc;
clear;
close;
format('v',8);

//Given Data :
pc=221.2;//bar
Tc=374.15+273;//K
p=100;//bar
T=400+273;//K
R=462;//Nm/KgK
//p*v=R*T
v=R*T/p/10^5;//m^3/Kg
disp(v,"Specific volume, v by perfect gas equation in m^3/Kg : ");
pr=p/pc;
Tr=T/Tc;
Z=0.84;//From compressibility chart
v=Z*R*T/p/10^5
disp(v,"Specific volume, v by compressibility chart in m^3/Kg : ");
