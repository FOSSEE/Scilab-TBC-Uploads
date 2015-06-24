//ex14.6
V_BIAS=9;
V=V_BIAS;
R_BIAS=33*10^3;
R_L=10*10^3;
K=16;    //in microSiemens per microAmpere
I_BIAS=(V_BIAS-(-V)-1.4)/R_BIAS;
g_m=K*I_BIAS;
A_v=g_m*R_L;
disp(A_v,'voltage gain')