clc
clear

Pm=25;
Em=0.9;
Q=0.063;
Hs=4;
Hd=25;
Rho=1000;
Hm=Hs+Hd;
g=9.81;

Ph=Rho*g*Q*Hm/1000;
Ps=Em*Pm;
Ep=Ph/Ps;

printf('Efficiency of Pump: %2.2f Percent',Ep*100);
printf('\n');
