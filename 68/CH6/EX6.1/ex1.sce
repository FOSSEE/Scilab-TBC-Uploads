// Example 6.1: To find the operating point of NMOS transistor
// Consider NMOS transistor

// 6.1a
I_D=100*10^-6; // (A)
K_n=387*10^-6*10; // K_n=u_n*C_ox(W/L) (A/V^2) 
V_th=0.48; // (V)
V_OV=sqrt(2*I_D/K_n);
disp(V_OV,"V_OV (V)")
V_GS=V_th+V_OV;
disp(V_GS,"V_GS (V)")

// 6.1b
I_C=100*10^-6; // (A)
I_S=6*10^-18 // (A)
V_T=0.025; // (V)
V_BE=V_T*log(I_C/I_S);
disp(V_BE,"V_BE (V)")