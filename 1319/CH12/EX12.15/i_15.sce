// To determine the currents in parallel branches of a network.

clc;
clear;

I=40;

R1=20;
R2=60;

//Current Divider equation I1= I*(R2/(R1+R2))

I1=I*(R2/(R1+R2));
I2=I*(R1/(R1+R2));

disp('A',I1,'The Current in the 20 ohm branch =')
disp('A',I2,'The Current in the 60 ohm branch =')

