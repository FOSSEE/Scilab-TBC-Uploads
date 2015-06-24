// Example 10.2
clc;
clear;
close;
// Given data
format('v',6);
VR= 12;// in V
IL= 0.5;// in A
RL= 25;// in Ω
// Resistanc required,
R= VR/IL;// in Ω
VL= IL*RL;// in V
Vout= VR+VL;//output voltage in V
Vin= Vout+2;// input voltage in V
disp(Vin,"The input voltage in volts is : ")





