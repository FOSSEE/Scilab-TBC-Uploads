//ex7.5
V_DD=15;
V_G=0;
I_D=5*10^-3;
R_D=1*10^3;
R_G=10*10^6;
R_S=220;
V_S=I_D*R_S;
V_D=V_DD-I_D*R_D;
V_DS=V_D-V_S;
V_GS=V_G-V_S;
disp(V_DS,'Drain to source voltage in volts');
disp(V_GS,'Gate to source voltage in volts');