//ex9.5
V_CC=20;
R_L=8;
B_ac=50;
r_e=6;
V_out_peak=V_CC/2;
V_CEQ=V_out_peak;
I_out_peak=V_CEQ/R_L;
I_c_sat=I_out_peak;
P_out=0.25*I_c_sat*V_CC;
P_DC=(I_c_sat*V_CC)/%pi;
R_in=B_ac*(r_e+R_L);
disp(P_out,'maximum ac output power in Watts');
disp(P_DC,'maximum DC output power in Watts');
disp(R_in,'input resistance in ohms');