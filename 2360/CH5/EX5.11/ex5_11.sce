// Exa 5.11
format('v',7);clc;clear;close;
// Given data
R1 = 1000;// in ohm
R2 = 100;// in ohm
R3 = 4;// in k ohm
R3 = R3*10^3;// in ohm
//At bridge balance, R1*R3 = R2*R4;
R4 = (R1*R3)/R2;// in ohm
R4= R4*10^-3;//maximum unknown resistance in k ohm
disp(R4,"The maximum unknown resistance in kΩ is");
R4= R4*10^3;// in ohm
R_TH = ((R1*R2)/(R1+R2)) + ((R3*R4)/(R3+R4));// in ohm
Si = 70;// in mm/µA
Si = Si * 10^6;// in mm/A
theta = 3;// in mm
E = 10;// in V
Rg = 80;// in ohm
// theta = (Si*E*R3*del_R)/((R_TH+Rg)*((R3+R4)^2));
del_R = (theta*((R_TH+Rg)*((R3+R4)^2)))/(Si*E*R3);// in ohm
disp(del_R,"The value of del_R in Ω is : ")
disp("This much unbalance is necessary to cause the deflection of 3 mm")
