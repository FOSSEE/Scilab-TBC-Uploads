// Example 4.10 : Small signal analysis
V_t=1.5; // (V)
K=0.00025;//K= k_nW/L (A/V^2)
V_A=50; // (V)
I_D=1.06*10^-3; // (A)
V_D=4.4; // (V)
R_D=10000; // (ohm)
R_L=10000; // (ohm)
V_GS=V_D;
g_m=K*(V_GS-V_t);
r_o=V_A/I_D;
A_v=-g_m*(R_L*R_D*r_o)/(R_D*R_L+R_D*r_o+R_L*r_o);
disp(A_v,"Voltage gain (V/V)")
R_G=10*10^6; //(ohm)
// i_i=v_i*(1-A_v)/R_G
R_in=R_G/(1-(A_v));
disp(R_in,"Input resistance (ohm)")
// v_DSmin=v_GSmin-V_t
v_i=V_t/(1+(-A_v)); // - sign to make A_v positive
disp(v_i," Largest allowable input signal (V)")