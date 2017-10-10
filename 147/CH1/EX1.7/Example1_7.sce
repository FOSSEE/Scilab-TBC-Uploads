close();
clear;
clc;
//resistance 'R1', 'R2', 'R3', 'R4' connected in series
V = 100; //V
R1 = 5; //ohm
R2 = 10; //ohm
R3 = 15; //ohm
R4 = 20; //ohm
//Voltage across R1 'V1'
V1 = R1*V/(R1+R2+R3+R4);
//Voltage across R2 'V2'
V2 = R2*V/(R1+R2+R3+R4);
//Voltage across R3 'V3'
V3 = R3*V/(R1+R2+R3+R4);
//Voltage across R4 'V4'
V4 = R4*V/(R1+R2+R3+R4);
mprintf("\nVoltage across %d ohm resistor is %d V\nVoltage across %d ohm resistor is %d V\nVoltage across %d ohm resistor is %d V\nVoltage across %d ohm resistor is %d V",R1,V1,R2,V2,R3,V3,R4,V4);