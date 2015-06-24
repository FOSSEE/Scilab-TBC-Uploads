// Example 8.4: Small signal analysis
R_S=10*10^3; // (ohm)
R_B1=100*10^3; // (ohm)
R_B2=15*10^3; // (ohm)
R_C1=10*10^3; // (ohm)
R_E1=870; // (ohm)
R_E2=3400; // (ohm)
R_C2=8000; // (ohm)
R_L=1000; // (ohm)
R_f=10000; // (ohm)
B=100; // beta value
V_A=75; // (V)
A=-201.45 // I_o/I_i (A/A)
R_i=1535; // (ohm)
R_o=2690; // (ohm)
B=-R_E2/(R_E2+R_f);
R_if=R_i/(1+A*B);
disp(R_if)
R_in=1/((1/R_if)-(1/R_S));
disp(R_in, "R_in (ohm)")
A_f=A/(1+A*B); // I_o/I_S
gain=R_C2*A_f/(R_C2+R_L); // I_o/I_S
disp(gain,"I_o/I_S (A/A)")
R_of=R_o*(1+A*B); // (ohm)
r_o2=75/0.0004; // (ohm)
g_m2=0.016; // (A/V)
r_pi2=6250; // (ohm)
R_out=r_o2*[1+g_m2*(r_pi2*R_of/(r_pi2+R_of))]
disp(R_out,"R_out (ohm)")