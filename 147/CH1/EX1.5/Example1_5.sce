close();
clear;
clc;
//resistance 'R1' rated at 'P1' and so on
V = 110; //V
P1 = 25; //W
P2 = 60; //W
P3 = 75; //W
P4 = 100; //W
R1 = V^2/P1; //ohm
R2 = V^2/P2; //ohm
R3 = V^2/P3; //ohm
R4 = V^2/P4; //ohm

mprintf("\nResistance %d ohm is rated at %d W\nResistance %0.2f ohm is rated at %d W\nResistance %0.1f ohm is rated at %d W\nResistance %d ohm is rated at %d W",round(R1),P1,R2,P2,R3,P3,round(R4),P4);