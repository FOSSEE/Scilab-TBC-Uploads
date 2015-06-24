// Example 11.2 Design of two-stage CMOS op-amp 

uC_n=50*10^-6; // u_n*C_ox (A/V^2)
uC_p=20*10^-6; // u_p*C_ox (A/V^2)
V_tn0=1; // (V)
V_tp0=-1; // (V)
fie_f=0.6/2; // (V)
y=0.5; // (V^1/2)
V_DD=5; // (V)
W_n=4*10^-6; // (m)
L_n=2*10^-6; // (m)
W_p=10*10^-6; // (m)
L_p=2*10^-6; // (m)
W=10*10^-6; // (m)
L=10*10^-6; // (m)
C_B=1*10^-12; // bit line capacitance (F)
deltaV=0.2; // 0.2 V decrement
WbyL_eq=1/(L_p/W_p+L_n/W_n); // WbyL_eq=(W/L)_eq
// Equivalent transistor will operate in saturation
I=(uC_n*WbyL_eq*(V_DD-V_tn0)^2)/2
r_DS=1/(uC_n*(W_n/L_n)*(V_DD-V_tn0));
v_Q=r_DS*I; // v_Q=r_DS*I
I_5=0.5*10^-3; // (A) 
deltat=C_B*deltaV/I_5;
disp(deltat, "The time (s) required to develop an output voltage of 0.2V")