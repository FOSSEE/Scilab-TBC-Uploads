clc
clear

Vc=5*(10^-4);
D=0.15;
L=0.2;
Vs=(22/7)*D*D*L*(1/4);
r=(Vc+Vs)/Vc;
G=1.4;
Ea=[1-(1/(r^(G-1)))];
Eith=0.3;
Erel=Eith/Ea;
printf('Erel= %3.2f Percent',Erel*100);
printf('\n');

Pm=500;     //in kPa
n=1000/2;
IP=(Pm*Vs*n)/60;
printf('IP= %3.2f kW',IP);
printf('\n');
