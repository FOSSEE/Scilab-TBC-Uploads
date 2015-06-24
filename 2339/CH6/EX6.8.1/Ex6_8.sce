clc
clear

D=10;       //Diameter in cm
L=15;       //Length in cm
Vs=(22/7)*(1/4)*D*D*L;      //in cm^3
Vc=250;     //in cm^3
V2=Vc;
V1=Vs+Vc;
r=V1/V2;
G=1.4;

Eff=100*(1-(1/(r^(G-1))));
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');
