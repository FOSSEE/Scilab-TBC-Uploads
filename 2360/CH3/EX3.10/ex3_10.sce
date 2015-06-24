// Exa 3.10
format('v',7);clc;clear;close;
// Given data
Rm = 50;//resistance of meter in ohm
Im = 2;//current in mA
Im = Im * 10^-3;// in A
V4 = 10;//voltage in V
R4 = (V4/Im) - Rm;// in ohm
R4= R4*10^-3;// in k ohm
disp(R4,"The value of R4 in kΩ is");
R4= R4*10^3;// in ohm
V3 = 50;// in V
// (R3+R4) = (V3/Im) - Rm;
R3 = (V3/Im) - Rm-R4;// in ohm
R3= R3*10^-3;// in k ohm
disp(R3,"The value of R3 in kΩ is");
R3= R3*10^3;// in ohm
V2 = 100;// in V
//(R2+R3+R4) = (V2/Im) - Rm;
R2 = (V2/Im) - Rm - R3 - R4;// in ohm
R2= R2*10^-3;// in k ohm
disp(R2,"The value of R2 in kΩ is");
R2= R2*10^3;// in ohm
V1 = 500;// in V
// (R1+R2+R3+R4) = (V1/Im) - Rm;
R1 = (V1/Im) - Rm - R4 - R3 - R2;// in ohm
R1= R1*10^-3;// in k ohm
disp(R1,"The value of R1 in kΩ is");
