clc
clear

Qa=0.025;
Hm=20;
L=0.4;
D=0.3;

A=(22/7)*(1/4)*D*D;
Slip=0.02;
Q=25/[1000*(1-Slip)];

N=(Q*60)/(L*A);

printf('Speed of Pump: %2.2f RPM',N);
printf('\n');
