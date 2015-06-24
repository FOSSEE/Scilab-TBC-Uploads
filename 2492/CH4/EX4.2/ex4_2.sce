// Exa 4.2
format('v',5)
clc;
clear;
close;
// Given data
V_BB = 15;// in V
V_CC = 15;// in V
I_CO = 0.1;// in µA
I_CO = I_CO * 10^-6;// in A
Beta = 60;
I_B = 50;// in µA
I_B = I_B * 10^-6;// in A
V_CE = 8;// in V
I_C = (Beta*I_B)+((1+Beta)*I_CO);// in A
I_C =  round(I_C * 10^3);// in mA
disp("Part (i) : ")
disp(I_C,"The value of I_C in mA is");
R_C = (V_CC-V_CE)/(I_C*10^-3);// in ohm
R_C = R_C * 10^-3;// in k ohm
disp(R_C,"The value of R_C in k ohm is");
V_BE = 0.3;// in V
R_BGe = (V_BB-V_BE)/I_B;// in ohm
R_BGe = R_BGe * 10^-3;// in k ohm
disp(R_BGe,"The value of R_B for Ge in k ohm is");
V_BE = 0.7;// in V
R_BSi = (V_BB-V_BE)/I_B;// in ohm
R_BSi = R_BSi * 10^-3;// in k ohm
disp(R_BSi,"The value of R_B for Si in k ohm is");
P_RC = ((I_C*10^-3)^2)*(7/3)*10^3;// in W
P_RC = P_RC * 10^3;// in mW
disp("Part (ii) : ")
disp(P_RC,"The power dissipations in RC in mW is");
// The power dissipations in the transistor 
P_TRANS = V_CE*I_C;// in mW
disp(P_TRANS,"The power dissipations in the transistor in mW is");
disp("Part (iii) : For RC= 1 kΩ, V_CE increase, shifting the Q-point ot right and I_C increase slightly")
