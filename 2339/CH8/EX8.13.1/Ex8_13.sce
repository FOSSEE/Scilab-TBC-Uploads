clc
clear

Vs=0.015;
Vc=0.06*Vs;
V3=Vc;
n=1.3;
P2=10;
P1=1;
N=280;

V4=V3*[(P2/P1)^(1/n)];
printf('V4: %3.4f m^3/cycle',V4);
printf('\n');
printf('V3: %3.4f m^3/cycle',V3);
printf('\n');

V1=Vs+Vc;
printf('V1: %3.4f m^3/cycle',V1);
printf('\n');

V14=V1-V4;      //Suction Volume
V2=V1*[(P1/P2)^(1/n)];
IP=[n/(n-1)]*[P1*100*(V14)]*[((P2/P1)^((n-1)/n))-1]*[N/60];
printf('IP: %3.0f kW',IP);
printf('\n');

