// Exa 1.12
clc;
clear;
close;
// Given data
E = 20;// in V
V_D1 = 0.7;// in V
V_D2 = 0.7;// in V
V2 = E - V_D1  - V_D2;// in V
R1 = 3.3*10^3;// in ohm
R2 = 5.6*10^3;// in ohm
I2 = V2/R2;// in A
I2 = I2*10^3;// in mA
disp(I2,"The current through resistor R2 in mA is ");
I1 = V_D2/R1;
I1 = I1 * 10^3;// in mA
disp(I1,"The current through resistor R1 in mA is");
I_D2 = I2-I1;// in mA
disp(I_D2,"The current through diode D2 in mA is");
