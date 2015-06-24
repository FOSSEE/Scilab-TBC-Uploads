// Example 4.4 :  Design of given circuit to obtain V_D=0.1V
// MOSFET is operating in triode region
V_D=0.1; // (V)
V_DD=5; // (V)
V_t=1; // (V)
K=1*10^-3; // K=k'_n(W/L)
V_GS=5; // (V)
V_DS=0.1; // (V)
I_D=K*((V_GS-V_t)*V_DS-(V_DS^2)/2);
disp(I_D,"I_D (A)")
R_D=(V_DD-V_D)/I_D;
disp(R_D,"R_D (ohm)")
r_DS=V_DS/I_D;
disp(r_DS,"r_DS (ohm)")