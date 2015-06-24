// Example 6.6 : To determine midband gain and upper 3dB frequency
R_in=420*10^3; // (ohm)
R_sig=100*10^3; // (ohm)
g_m=4*10^-3; // (mho)
R_L=3.33*10^3; // R_L=R'_L (ohm)
C_gs=1*10^-12; // F
C_gd=C_gs; 
A_M=-R_in*g_m*R_L/(R_in+R_sig)
disp(A_M,"Midband frequency gain A_M (V/V)")
R_gs=R_in*R_sig/(R_in+R_sig);
R=R_gs; //R=R'
T_gs=C_gs*R_gs; // Oen circuit time constant of C_gs (s)
R_gd=R+R_L+g_m*R_L*R;
T_gd=R_gd*C_gd; // open circuit time constant of C_gd (s)
w_H=1/(T_gs+T_gd); // upper 3dB frequency w_H
f_H=w_H/(2*%pi);
disp(f_H,"Upper 3dB frequency f_H (Hz)")