//ex11.2
R_S=10^3;
V_BIAS=110;
V_BE=0.7;
V_CE_sat=0.1;
V_A=V_BE+V_CE_sat;    //VOLTAGE ACROSS ANODE
V_R_s=V_BIAS-V_A;    //VOLTAGE ACROSS R_S
I_A=V_R_s/R_S;
disp(I_A,'Anode current in amperes')