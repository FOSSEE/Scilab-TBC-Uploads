    // Exa 3.22
format('v',6);
clc;
clear;
close;
// Given data 
// Part (a)
bita= 30;
R_C= 2.2;// in kΩ
R_C=R_C*10^3;// in Ω
R_B= 2.2;// in kΩ
R_B=R_B*10^3;// in Ω
VCC= 3;// in V
VCE= -3;// in V
VBE= 0.7;// in V
V_B= 0;// in V
V_E= V_B-VBE;// in V
I_E= (V_E-VCE)/R_B;// in A
I_C= I_E;// in A
V_C= VCC-I_E*R_C;// in V
I_B= I_C/bita;// in A
disp("Part (a)")
disp(V_B,"The value of V_B in V is : ")
disp(V_E,"The value of V_E in V is : ")
disp(I_E*10^3,"The value of I_E in mA is : ")
disp(V_C,"The value of V_C in V is : ")
disp(I_B*10^3,"The value of I_B in mA is : ")
// Part (b)
R_C= 560;// in Ω
R_B= 1.1;// in kΩ
R_B=R_B*10^3;// in Ω
VCC= 9;// in V
VCE= 3;// in V
V_B= 3;// in V
V_E= V_B+VBE;// in V
I_E= (VCC-V_E)/R_B;// in A
alpha= bita/(1+bita);
I_C= I_E*alpha;// in A
V_C= I_C*R_C;// in V
I_B= I_C/bita;// in A
disp("Part (b)")
disp(V_B,"The value of V_B in V is : ")
disp(V_E,"The value of V_E in V is : ")
disp(I_C*10^3,"The value of I_E in mA is : ")
disp(V_C,"The value of V_C in V is : ")
disp(I_B*10^3,"The value of I_B in mA is : ")

