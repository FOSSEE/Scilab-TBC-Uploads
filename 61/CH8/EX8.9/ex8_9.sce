//ex8.9
R_1=47*10^3;
R_2=8.2*10^3;
R_D=3.3*10^3;
R_L=33*10^3;
I_D_on=200*10^-3;
V_GS=4;
V_GS_th=2;
g_m=23*10^-3;
V_in=25*10^-3;
V_DD=15;
V_GS=(R_2/(R_1+R_2))*V_DD;
K=value_of_K(200*10^-3,4,2);
I_D=K*(V_GS-V_GS_th)^2;
V_DS=V_DD-I_D*R_D;
R_d=(R_D*R_L)/(R_D+R_L);
V_out=g_m*V_in*R_d;
disp(V_DS,'Drain to source voltage in volts(V_DS)')
disp(I_D,'Drain current (I_D) inAmperes')
disp(V_GS,'Gate to source voltage (V_GS) in volts')
disp(V_out,'AC output voltage in volts')