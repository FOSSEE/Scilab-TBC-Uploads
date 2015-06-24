clc
clear

Hs=32;
N=1450;
Eff=0.85;
Q=0.05;
Hfs=1;
Hfd=6;
Hm=Hs+Hfd+Hfs;
Rho=1000;
g=9.81;

P=[Rho*g*Q*Hm]/Eff;
printf('Power Consumed: %2.2f kW',P/1000);
printf('\n');
