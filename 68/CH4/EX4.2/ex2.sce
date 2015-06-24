// Example 4.2: Design of given circuit to obtain I_D=0.4mA and V_D=0.5V
// NMOS transistor is operating in saturation region
I_D=0.4*10^-3; // (A)
V_D=0.5; // (V)
V_t=0.7; // (V)
uC_n=100*10^-6; // (A/V^2)
L=1*10^-6; // (m)
W=32*10^-6; // (m)
V_SS=-2.5; // (V)
V_DD=2.5; // (V)
V_OV=sqrt(I_D*2*L/(uC_n*W));
V_GS=V_t+V_OV;
disp(V_GS,"V_t (V)")
V_S=-1.2; // (V)
R_S=(V_S-V_SS)/I_D;
disp(R_S,"R_S (ohm)")
V_D=0.5; // (V)
R_D=(V_DD-V_D)/I_D;
disp(R_D,"R_D (ohm)")