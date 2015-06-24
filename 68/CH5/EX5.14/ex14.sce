// Example 5.14 : Analysis of transistor amplifier
V_CC=10; // (V)
R_C=3000; // (ohm)
R_BB=100*10^3; // (ohm)
V_BB=3; // (V)
V_BE=0.7; // (V)
V_T=25*10^-3; // (V)
I_B=(V_BB-V_BE)/R_BB;
disp(I_B,"Base current (A)")
I_C=B*I_B;
disp(I_C,"Collector current (A)")
V_C=V_CC-I_C*R_C;
disp(V_C,"Collecor voltage (V)")
I_E=B*I_C/(B+1);
r_e=V_T/I_E;
disp(r_e,"r_e (ohm)")
g_m=I_C/V_T;
disp(g_m,"g_m (mho)")
r_pi=B/g_m;
disp(r_pi,"r_pi (ohm)")
// v_i is input voltage let us assume it to be 1 V
v_i=1;
v_be=v_i*r_pi/(r_pi+R_BB)
disp(v_be,"v_be")
v_o=-g_m*R_C*v_be;
disp(v_o,"Output voltage (V)")
A_v=v_o/v_i;
disp(A_v,"Voltage gain")