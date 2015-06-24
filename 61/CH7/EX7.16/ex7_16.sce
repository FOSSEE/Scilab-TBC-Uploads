//ex7.16
I_D_on=200*10^-3;
V_DD=24;
R_D=200;
V_GS=4;
V_GS_th=2;
R_1=100*10^3;
R_2=15*10^3;
K=value_of_K(200*10^-3,4,2)
V_GS=(R_2/(R_1+R_2))*V_DD;
I_D=K*(V_GS-V_GS_th)^2;
V_DS=V_DD-I_D*R_D;
disp(V_DS,'Drain to Source voltage in Volts')
disp(V_GS,'Gate to Source voltage in Volts')