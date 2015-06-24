//ex7.11
V_DD=12;
V_D=7;
R_D=3.3*10^3;
R_S=2.2*10^3;
R_1=6.8*10^6;
R_2=1*10^6;
I_D=(V_DD-V_D)/R_D;
V_S=I_D*R_S;
V_G=(R_2/(R_1+R_2))*V_DD;
V_GS=V_G-V_S;
disp(I_D,'Drain current in amperes')
disp(V_GS,'Gate to source voltage in volts')