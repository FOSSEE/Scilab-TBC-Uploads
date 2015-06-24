//ex8.5
R_D=3.3*10^3;
R_L=4.7*10^3;
R_d=(R_D*R_L)/(R_D+R_L);    //Equivalent drain resistance
g_m=3.25*10^-3;    //from previous question
V_in=100*10^-3;    //previous question
V_out=g_m*R_d*V_in;
disp(V_out,'Output voltage rms value in Volts')