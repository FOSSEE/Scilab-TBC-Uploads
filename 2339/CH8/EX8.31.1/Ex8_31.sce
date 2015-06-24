clc
clear

D=0.15;
L=0.3;
P1=1;
T1=27+273;
P2=8;
N=120;
G=1.4;
R=0.287;
Vs=(22/7)*(1/4)*D*D*L;

m=[P1*100*Vs]/[R*T1];
printf('Mass of air compressed per cycle: %3.4f kJ/cycle ',m);
printf('\n');

W=[G/(G-1)]*[P1*100*Vs]*[((P2/P1)^((G-1)/G))-1];
printf('Work required per cycle: %3.3f kJ/cycle ',W);
printf('\n');

P=(W*N)/60;
printf('Power required to drive compressor: %3.2f kJ/cycle ',P);
printf('\n');
