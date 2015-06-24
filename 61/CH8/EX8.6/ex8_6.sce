//ex8.6
I_GSS=30*10^-9;
V_GS=10;
R_G=10*10^6;
R_IN_gate=V_GS/I_GSS;
R_in=(R_IN_gate*R_G)/(R_IN_gate+R_G);    //parallel combination
disp(R_in,'Input resistance in ohms, as seen by signal source')