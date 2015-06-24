// Example 11.3 : Time required for v_B to reach 4.5V
// Consider sense-amplifier circuit
uC_n=50*10^-6; //uC_n=u_n*C_ox (A/V^2)
uC_p=20*10^-6; //uC_p=u_p*C_ox (A/V^2)
W_n=12*10^-6; // (m)
L_n=4*10^-6; // (m)
W_p=30*10^-6; // (m)
L_p=4*10^-6; // (m)
v_B=4.5; // (V)
C_B=1*10^-12; // (F)
V_GS=2.5; // (V)
V_t=1; // (V)
deltaV=0.1; // (V)
g_mn=uC_n*(W_n/L_n)*(V_GS-V_t); // (A/V)
g_mp=uC_p*(W_p/L_p)*(V_GS-V_t); // (A/V)
G_m=g_mn+g_mp; // (A/V)
T=C_B/G_m; // (s)
deltat=T*(log(v_B/V_GS)-log(deltaV));
disp(deltat,"The time for v_B to reach 4.5V (s)")