clc;
clear all;1
//case 
ue=1.35;//electon mobility in m^2/V*s
uh=0.45;//hole mobility in m^2/V*s
ni=1.45e13;//intrisic carrier concentration in m^-3
e=1.6e-19;
A=1e-4;
l=1e-2;
sigma=ni*e*(ue+uh)//conductivity of Si crystal
R=l/(sigma*A);//resistance of Si crystal
disp('ohm',R,'resistance of Si crystal is:')
//case 2
Nsi=5e28;
Nd=Nsi/1e9;
p=ni^2/Nd;//concentration of hole;
sigma1=Nd*e*ue;//conductivity 
Re=l/(sigma1*A);//resistance
disp('ohm',,Re,'resistance is:')

