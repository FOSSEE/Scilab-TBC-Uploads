// Exa 5.4
clc;
clear;
close;
// Given data
R1 = 4.3;// in K ohm
R1= R1*10^3;// in ohm
R2 = 10;// in K ohm
R2= R2*10^3;// in ohm
r_e = (R1*R2)/(R1+R2);// in ohm
bita = 200;
V=25;// in mV
I= 1;// in mA
r_e_desh= V/I;// in ohm
Zin_base = bita*(r_e + r_e_desh);// in ohm
disp(Zin_base*10^-3,"The input impedence of the base in kΩ is : ")
R3 = 10*10^3;// in ohm
Zin_stage = (R2*R3*Zin_base)/(R2*Zin_base+R3*Zin_base+R2*R3);// in ohm
disp(Zin_stage*10^-3,"The input impedance of the stage in kΩ is");
disp("Because the input impedence of base is much larger than the input impedence")
disp(" of the stage, usually approximate the input impedence of the stage as the parallel")
Zin_stage= R2*R3/(R2+R3);// in ohm
disp(" of the biasing resistor only ")
disp(string(Zin_stage*10^-3)+" kΩ")
