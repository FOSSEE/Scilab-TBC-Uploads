//Resistance R, Current source , Voltage source V1
close();
clear;
clc;
R1 = 30;//ohm
R2 = 20;//ohm
R3 = 10;//ohm
R4 = 5;//ohm
I = 10;//A
V = 100;//V
//From previous question
I1 = 0.37;//A
I2 = -1.85;//A
//Current through R4 'I3'
I3 = I - I1;
V1 = I3*R4;
V2 = V+I2*R1;
//Power from Current source 'P1'
P1 = I*V1;
//Power from voltage source 'P2'
P2 = V*(-I2);
//Total Power 'P'
P = P1+P2;
//Power dissipated in resistances 'Pr'
Pr = V1^2/R4+I1^2*R3 + V2^2/R2 + I2^2*R1;
mprintf('Sum of power from the sources P = %0.2f W\nPower dissipated by resistances P = %0.2f W \nHence Sum of the powers from the two sources is the total power dissipated in all the resistances.',P,Pr);