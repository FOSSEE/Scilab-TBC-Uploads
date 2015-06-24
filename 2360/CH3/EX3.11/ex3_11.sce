// Exa 3.11
format('v',7);clc;clear;close;
// Given data
Rm = 50;//meter resistance in ohm
Im = 2;//current in mA
Im = Im * 10^-3;// in A
S = 1/Im;//sensitivity in ohm/V
// Voltage ranges
V1 = 500;// in V
V2 = 100;// in V
V3 = 50;// in V
V4 = 10;// in V
R4 = (S*V4) - Rm;// in ohm
R4= R4*10^-3;// in k ohm
disp(R4,"The value of R4 in kΩ  is");
R4= R4*10^3;// in ohm
R3 = (S*V3) - (Rm+R4);// in ohm
R3= R3*10^-3;// in k ohm
disp(R3,"The value of R3 in kΩ is");
R3= R3*10^3;// in ohm
R2 = (S*V2) - (Rm+R4+R3);// in ohm
R2= R2*10^-3;// in k ohm
disp(R2,"The value of R2 in kΩ is");
R2= R2*10^3;// in ohm
R1 = (S*V1) - (Rm+R2+R3+R4);// in ohm
R1= R1*10^-3;// in k ohm
disp(R1,"The value of R1 in kΩ is");
