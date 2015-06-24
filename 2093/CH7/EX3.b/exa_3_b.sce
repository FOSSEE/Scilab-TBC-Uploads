// Exa 3.b
clc;
clear;
close;
// Given data
I_CQ= 10;// in mA
I_CQ= I_CQ*10^-3;// in A
V_CQ= 5;// in V
V_CC= 10;// in V
R_C= 0.4;// in kΩ
R_C= R_C*10^3;// in Ω
V_BE= 0.075;// in V
V_BB= 0.175;// in V
bita=100;
bita_max=120;
bita_min= 40;
// Applying KVL we get, V_CQ= V_CC-I_C*(R_C+R_E)
R_E= (V_CC-V_CQ)/I_CQ-R_C;// in Ω
disp(R_E,"The value of R_E in Ω is :")
I_B= I_CQ/bita;// in A
R_B= (V_BB-V_BE)/I_B;// in Ω
disp(R_B*10^-3,"The value of R_B in kΩ")
I_Cmax= bita_max*I_B;// in A
I_Cmin= bita_min*I_B;// in A
delta_I_CQ= I_Cmax-I_Cmin;// in A
disp(delta_I_CQ*10^3,"The value of delta_I_C in mA is : ")
