clc
//ex_13.9
V_CC=20;
V_BE_Q=0.7;
V_T=26*10^-3;      //thermal voltage
B=200;      //beta value
R_S_1=10*10^3;      //R_S is taken as R_S_1
R_1=100*10^3;
R_2=100*10^3;
R_L_1=1*10^3;      //R_L is taken as R_L_1
R_E=2*10^3;
V_B=V_CC*R_2/(R_1+R_2);      //thevenin voltage
R_B=1/((1/R_1)+(1/R_2));      //thevenin resistance
R_L_2=1/((1/R_L_1)+(1/R_E));      //R_L' is taken as R_L_2
i_B_Q=(V_B-V_BE_Q)/(R_B+R_E*(1+B))
i_C_Q=B*i_B_Q;
i_E_Q=i_B_Q+i_C_Q;
V_CE_Q=V_CC-i_E_Q*R_E;
//we can verify that the device is in active region as we get V_CE>0.2 and i_BQ>0
r_pi=B*V_T/i_C_Q;
A_v=(1+B)*R_L_2/(r_pi+(1+B)*R_L_2);      //voltage gain
Z_it=r_pi+(1+B)*R_L_2;      //input impedance of base of transistor
Z_i=1/((1/R_B)+(1/Z_it));      //input impedance of emitter-follower
R_S_2=1/((1/R_S_1)+(1/R_1)+(1/R_2));      //R_S' is taken as R_S_2
Z_o=1/(((1+B)/(R_S_2+r_pi))+(1/R_E));      //output impedance
A_i=A_v*Z_i/R_L_1;      //current gain
G=A_v*A_i;      //power gain
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp(A_v,'voltage gain')
disp(Z_i,'input impedance in ohms')
disp(A_i,'current gain')
disp(G,'power gain')
disp(Z_o,'output impedance in ohms')
