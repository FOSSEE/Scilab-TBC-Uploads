//ex8.7
I_DSS=200*10^-3;
g_m=200*10^-3;
V_in=500*10^-3;
V_DD=15;
R_D=33;
R_L=8.2*10^3;
I_D=I_DSS;    //Amplifier is zero biased
V_D=V_DD-I_D*R_D;
R_d=(R_D*R_L)/(R_D+R_L);
V_out=g_m*R_d*V_in;
disp(V_D,'DC output voltage in Volts')
disp(V_out,'AC output voltage in volts')