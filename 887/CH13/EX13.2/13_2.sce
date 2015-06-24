clc
//ex13.2
V_CC=10;
V_BB=1.6;
R_B=40*10^3;
R_C=2*10^3;
V_in_Q=0;      //Q point
V_in_max=0.4;
V_in_min=-0.4;
//the following values are found from the intersection of input loadlines with the input characteristic
i_B_Q=25*10^-3;      //for V_in_Q
i_B_max=35*10^-3;      //for V_in_max
i_B_min=15*10^-3;      //for V_in_min
//the following values are found from the intersection of output loadlines with the output characteristic
V_CE_Q=5;      //corresponding to i_B_Q
V_CE_max=7;      //corresponding to i_B_min
V_CE_min=3;      //corresponding to i_B_max
disp('graphs cannot be shown but the required values are')
disp(V_CE_max,'maximum value of V_CE')
disp(V_CE_min,'minimum value of V_CE')
disp(V_CE_Q,'Q-point value of V_CE')
