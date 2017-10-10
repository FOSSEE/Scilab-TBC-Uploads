//Resistance R1,R2 and R3 connected in series, Voltage V
close();
clear;
clc;
R1 = 5;//ohm
R2 = 7;
R3 = 8;
V = 100;
//Total Resistance 'Res'
Res = R1+R2+R3;
I = V/Res;
//Voltage across R1 'V1'
V1 = R1*I;
V2 = R2*I;
V3 = R3*I;
mprintf('Current, I = %0.0f A \nVoltage across the 5 ohm = %0.0f V\nVoltage across the 7 ohm = %0.0f V\nVoltage across the 8 ohm = %0.0f V',I,V1,V2,V3);