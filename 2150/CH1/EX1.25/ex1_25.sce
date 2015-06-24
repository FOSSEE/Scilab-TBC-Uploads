// Exa 1.25
clc;
clear;
close;
// Given data
R1= 1;// in kΩ
R2= 0.47;// in kΩ
V_o1 = 0.7;// in V
disp(V_o1,"The value of Vo1 in V is");
V_o2 = 0.3;// in V
disp(V_o2,"The value of Vo2 in V is");
I1 = (20-V_o1)/R1;// in mA
I2 = (V_o2-V_o1)/R2;// in mA
I = I1 + I2;// in mA
disp(I,"The current in mA is");
