clc
L_A=0.1; //m
L_B=0.04; //m
k_A=0.7; //W/m 0C
k_B=0.48; //W/m 0C
k_C=0.065; //W/m 0C

//Q2=0.2*Q1
L_C=0.8*[(L_A/k_A) + (L_B/k_B)]*k_C/0.2;
disp("thickness of rock wool insulation =")
disp(L_C*1000)
disp("mm")