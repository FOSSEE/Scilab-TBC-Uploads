// Example 6.2 : Comparison between NMOS transistor and npn transistor

disp("For NMOS transistor")
I_D=100*10^-6; // (A)
V_a=5; // V'_A=V_a (A)
L=0.4; // (um)
V_T=0.025;
K_n=267*4/0.4*10^-6; // K_n=u_n*C_ox*(W/L) (A/V^2)
V_OV=sqrt(2*I_D/K_n);
g_m=sqrt(2*K_n*I_D)
disp(g_m,"g_m (A/V)")
disp("R_in is infinite")
r_o=V_a*L/I_D;
disp(r_o,"r_o (ohm)")
A_O=g_m*r_o;
disp(A_O,"A_O (V/V)")
disp("For npn transistor")
I_C=0.1*10^-3; // collector current 
B_o=100; // beta value
V_A=35; // (V)
g_m=I_C/V_T;
disp(g_m,"g_m (A/V)")
R_in=B_o/g_m;
disp(R_in,"R_in (ohm)")
r_o=V_A/I_C;
disp(r_o,"r_o (ohm)")
A_O=g_m*r_o;
disp(A_O,"A_O (V/V)")