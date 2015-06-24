//Example 5.18 : Midband gain and 3dB frequency
// Transistor is biased at I_C=1mA
V_CC=10; // (V)
V_EE=10; // (V)
I=0.001; // (A)
R_B=100000; // (ohm)
R_C=8000; // (ohm)
R_sig=5000; //(ohm)
R_L=5000; // (ohm)
B=100; // beta value
V_A=100; // (V)
C_u=1*10^-12; // (F)
f_T=800*10^6; // (Hz)
I_C=0.001; // (A)
r_x=50; // (ohm)
// Values of hybrid pi model parameters
g_m=I_C/V_T;
r_pi=B/g_m;
r_o=V_A/I_C;
w_T=2*%pi*f_T;
CpiplusCu=g_m/w_T; // C_u+C_pi
C_pi=CpiplusCu-C_u;
R_l=r_o*R_C*R_L/(r_o*R_C+R_C*R_L+R_L*r_o) // R_l=R_L'
A_M=R_B*r_pi*g_m*R_l/((R_B+R_sig)*(r_pi+r_x+(R_B*R_sig/(R_B+R_sig))));
disp(A_M,"Midband gain (V/V)")
R_seff=(r_pi*(r_x+R_B*R_sig/(R_B+R_sig)))/(r_pi+r_x+R_B*R_sig/(R_B+R_sig)); // Effective source resistance R_seff=R'_sig
C_in=C_pi+C_u*(1+R_l*g_m);
f_H=1/(2*%pi*C_in*R_seff);
disp(f_H,"3dB frequency (Hz)")