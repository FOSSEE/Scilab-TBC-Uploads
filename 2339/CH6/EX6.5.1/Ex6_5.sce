clc
clear

V2=0.2;         //in cm^3
V3=V2;
Vc=V2;

Vs=1.2;         //in cm^3
V1=V2+Vs;
G=1.4;

r=(V1/V2);
Eff=100*(1-(1/(r^(G-1))));
printf('Efficiency of Engine is %2.0f Percent',Eff);
printf('\n');
