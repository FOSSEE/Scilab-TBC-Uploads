//clc();
clear;
//To determine hysteresis power loss in watt per cubic meter and in watt per kg
HC=200;          //hysteresis loss per cycle in J/m^3
A=7650;          //atomic weight in kg/m^3
M=100;           //magnetisation cycles per sec
L=HC*M;
P=L/A;
printf("hysteresis power loss per second is %f watt/m^3",L);
printf("power loss is %f watt/kg",P);
