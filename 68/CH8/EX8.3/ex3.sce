// Example 8.3 : Small signal analysis
B=100; // beta value
I_B=0.015*10^-3; // (A)
I_C=1.5*10^-3; // (A)
V_C=4.7; // (V)
g_m=40*10^-3;
R_f=47000;
R_S=10000;
R_C=4700;
r_pi=B/g_m;
A=-358.7*10^3; // V_o/I_i= -g_m(R_f||R_C)(R_S||R_F||r_pi)
R_i=1400; // R_i=R_S||R_f||r_pi (ohm)
R_o=R_C*R_f/(R_C+R_f); 
B=-1/R_f;
A_f=A/(1+A*B); // V_o/I_s
A_v=A_f/R_S; // V_o/V_s
disp(A_v,"The gain (V/V)")
R_if=R_i/(1+A*B);
disp(R_if,"R_if (ohm)")
R_of=R_o/(1+A*B);
disp(R_of,"R_of (ohm)")