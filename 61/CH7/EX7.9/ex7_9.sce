//ex7.9
I_DSS=12*10^-3;
V_GS_off=-3;
V_DD=12;
V_D=6;
I_D=I_DSS/2;    //MIDPOINT BIAS
V_GS=V_GS_off/3.4;    //MIDPOINT BIAS
R_S=abs((V_GS/I_D))
R_D=(V_DD-V_D)/I_D
disp(R_S,'Source Resistance in Ohms')
disp(R_D,'Drain Resistance in Ohms')