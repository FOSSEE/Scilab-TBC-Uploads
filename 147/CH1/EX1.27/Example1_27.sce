close();
clear;
clc;
R = 2; //ohm
//Applying KVL in two loops
//25 - 15*I1 - 10 + 3*I2 - 3*I1 = 0
//20 - 3*I2 + 3*I1 - 2*I2 = 0
//Solving the two equations
A =[18 -3;-3 5];
C = [15;20];
B =  inv(A)*C;
I1 = B(1,1);
I2 = B(2,1);
//voltage across R
Vab = R*I2; //V
mprintf("Current through 2 ohm resistor, I2 = %d A\nVoltage across 2 ohm resistor, Vab = %d V",I2,Vab);