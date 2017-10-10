// To determine current through each resistor in series and parallel combinational circuit

clc;
clear;

R=10;
R1=20;
R2=30;

// R is the resistance in series with the parallel combination of R1 and R2.

V=100;

Reff=(R1*R2)/(R1+R2);

Rt=R+Reff;

I=V/Rt;

V1=I*R; // Voltage drop across 10 ohm resistor.

I1=I*(R2/(R1+R2));
I2=I*(R1/(R1+R2));

disp('ohms',Rt,'The total resistance of the network =')
disp('A',I,'The current through 10 ohm resistor =')
disp('A',I1,'The current through 20 ohm resistor =')
disp('A',I2,'The current through 30 ohm resistor =')
