// Example 4.12 : Midband gain and upper 3dB frequency
R_sig= 100*10^3; // (ohm)
R_G=4.7*10^6; // (ohm)
R_D=15*10^3; // (ohm)
R_l=15*10^3; // (ohm)
g_m=1*10^-3; // (mho)
r_o=150*10^3; // (ohm)
C_gs=1*10^-12; // (F)
C_gd=0.4*10^-12; // (F)
R_L= 1/(1/r_o + 1/R_D + 1/R_l)
A_M=R_G/(R_G + R_sig)*g_m*R_L;
disp(A_M,"midband gain A_M (V/V)")
C_eq=(1+g_m*R_L)*C_gd;
C_in=C_gs+C_eq;
f_H=(R_G+R_sig)/(2*%pi*C_in*R_sig*R_G);
disp(f_H,"f_H (Hz)")