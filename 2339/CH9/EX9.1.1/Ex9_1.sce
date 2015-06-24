clc
clear

D=0.3;
L=0.6;
N=60;
Hs=5;
Hd=10;
Ep=0.8;
Qa=0.075;

A=(22/7)*(1/4)*D*D;
Rho=1000;
g=9.81;

F1=Rho*g*Hs*A;
F2=Rho*g*Hd*A;

TF=F1+F2;
printf('Total Force Required: %2.2f kN',TF/1000);
printf('\n');

Q=(2*L*A*N)/60;
Qa=0.075;
Slip=(Q-Qa)/Q;
printf('Percentage Slip: %2.2f Percent',Slip*100);
printf('\n');

Cd=Qa/Q;

P=(Rho*g*Qa*(Hs+Hd))/Ep;
printf('Power input: %2.2f kW',P/1000);
printf('\n');
