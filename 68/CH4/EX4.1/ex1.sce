// Example 4.1 : To determine operating point parameters
L_min=0.4*10^-6; // (m)
t_ox=8*10^-9; // (s)
u_n=450*10^-4; // (A/V^2)
V_t=0.7; // (V)
e_ox=3.45*10^-11; 

// 4.1a
C_ox=e_ox/t_ox;
disp(C_ox,"C_ox (F/m^2)")
k_n=u_n*C_ox;
disp(k_n,"k_n (A/V^2)")

// 4.1b 
// Operation in saturation region
W=8*10^-6; // (m)
L=0.8*10^-6; // (m)
i_D=100*10^-6; // (A)
V_GS=sqrt(2*L*i_D/(k_n*W)) +V_t;
disp(V_GS,"V_GS (V)")
V_DSmin=V_GS-V_t;
disp(V_DSmin,"V_DSmin (V)")

// 4.1c
// MOSFET in triode region
r_DS=1000; // (ohm)
V_GS=1/(k_n*(W/L)*r_DS)+V_t;
disp(V_GS,"V_GS (V)")