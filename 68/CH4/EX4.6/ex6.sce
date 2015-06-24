// Example 4.6;  Design of given circuit to obtain I_D=0.5mA and V_D=3V
// MOSFET is in saturation
V_DD=5; // (V)
V_D=3; // (V)
I_D=0.5*10^-3; // (A)
V_t=-1; // (V)
K=1*10^-3; // K=k'_n(W/L)
V_OV=sqrt(2*I_D/K);
V_GS=V_t+(-V_OV)
R_D=V_D/I_D;
V_Dmax=V_D-V_t; // - sign as magnitude of V_t is considered
R_D=V_Dmax/I_D;
disp(R_D,"R_D (ohm)")