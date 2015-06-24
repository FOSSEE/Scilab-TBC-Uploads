// Example 4.3: Design of given circuit to obtain I_D=80uA
// FET is operating in saturation region
I_D=80*10^-6; // (A)
V_t=0.6; // (V)
uC_n=200*10^-6; // (A/V^2)
L=0.8*10^-6; // (m)
W=4*10^-6; // (m)
V_DD=3; // (V)
V_OV=sqrt(2*I_D/(uC_n*(W/L)));
V_GS=V_t+V_OV;
V_DS=V_GS;
V_D=V_DS;
disp(V_D,"V_D (V)")
R=(V_DD-V_D)/I_D;
disp(R,"R (ohm)")