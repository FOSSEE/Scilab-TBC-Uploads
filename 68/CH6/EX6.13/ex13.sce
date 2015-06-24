// Example 6.13: Analysis of CC-CE amplifier
// Consider a CC-CE amplifier
// at an emitter bias current of 1mA for Q_1 and Q_2
g_m=40*10^-3; // (A/V)
r_e=25; // (ohm)
B=100; // beta value
C_u=2*10^-12; // (F)
f_T=400*10^6 // (Hz)
r_pi= B/g_m; 
disp(r_pi,"r_pi (ohm)")
C_pi=g_m/(2*%pi*f_T)-C_u;
disp(C_pi,"C_pi (F)")
R_in2=2500; // (ohm)
r_pi2=2500; // (ohm)
r_pi1=2500; // (ohm)
r_e1=0.025; // (ohm)
B_1=100; // beta value
R_in=(B_1+1)*(r_e1+R_in2);
disp(R_in,"R_in (ohm)")
R_sig=4*10^3; // (ohm)
R_L=4000; // (ohm)
Vb1byVsig=R_in/(R_in+R_sig); // (V_b1/V_sig)
disp(Vb1byVsig,"(V_b1/V_sig) (V/V)")
Vb2plusVb1=R_in2/(R_in2+r_e1); // (V_b2/V_b1)
disp(Vb2plusVb1,"(V_b2/V_b1) (V/V)")
VobyVb2=-g_m*R_L; // (V_o/V_b2)
disp(VobyVb2,"(V_o/V_b2) (V/V)")
A_M=VobyVb2*Vb2plusVb1*Vb2plusVb1;
disp(A_M,"A_M (V/V)")
R_u1=R_sig*R_in/(R_sig+R_in);
disp(R_u1,"R_u1 (ohm)")
R_pi1=(R_sig+R_in2)/(1+(R_sig/r_pi1)+(R_in2/r_e1)); // C_pi1 sees a resistance R_pi1
disp(R_pi1,"R_pi1 (ohm)")
R_out1=25+4000/101;
R_pi2=R_in2*R_out1/(R_in2+R_out1); // C_pi2 sees a resistance R_pi2
disp(R_pi2,"R_pi2 (ohm)")
R_u2=(1+g_m*R_L)*R_pi2+R_L;
disp(R_u2,"R_u2 (ohm)")
C_u1=2*10^-12; // (F)
R_u1=3940; // (ohm)
C_pi1=13.9*10^-12; // (F)
C_u2=2*10^-12; // (F)
C_pi2=13.9*10^-12; // (F)
T_H=C_u1*R_u1+C_pi1*R_pi1+C_u2*R_u2+C_pi2*R_pi2;
disp(T_H,"T_H (s)")
f_H=1/(2*%pi*T_H);
disp(f_H,"f_H (Hz)")
A_M=r_pi*(-g_m*R_L)/(r_pi+R_sig);
disp(A_M,"A_M (V/V)")
R_pi=r_pi*R_sig/(r_pi+R_sig); 
disp(R_pi,"R_pi (ohm)")
R_u=(1+g_m*R_L)*R_pi +R_L;
disp(R_u,"R_u (ohm)")
T_H=C_pi*R_pi+C_u*R_u;
disp(T_H,"T_H (s)")
f_H=1/(2*%pi*T_H);
disp(f_H,"f_H (Hz)")