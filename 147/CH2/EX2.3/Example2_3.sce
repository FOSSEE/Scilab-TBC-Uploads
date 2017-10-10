close();
clear;
clc;
R1 = 12; //ohm
R2 = 4; //ohm
R3 = 5; //ohm
R4 = 5; //ohm
R5 = 15; //ohm
//voltage across R1 'V1'
V1 = 132; //V
I = V1/R1;
R = R1 + R2 + (R4+R5)*R3/(R3+R4+R5);
//source voltage 'V'
V = I*R;
mprintf("The voltage source, V = %d V",round(V));