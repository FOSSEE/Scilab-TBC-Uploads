// Example 10.4 : To determine parameters for NMOS transistor
// Consider NMOS transistor switch
uC_n=50*10^-6; //uC_n=u_n*C_ox (A/V^2)
uC_p=20*10^-6; //uC_px    `=u_p*C_ox (A/V^2)
V_tO=1; // (V)
y=0.5; // (V^1/2)
fie_f=0.6/2; // (V)
V_DD=5; // (V)
W_n=4*10^-6; // (m)
L_n=2*10^-6; // (m)
C=50*10^-15; // (F)

// 10.4a
V_t=1.6; // (V)
V_OH=V_DD-V_t; // V_OH is the value of v_O at which Q stops conducting (V)
disp(V_OH,"V_OH (V)")
 
// 10.4b
W_p=10*10^-6; // (m)
L_p=2*10^-6; // (m)
i_DP=uC_p*W_p*((V_DD-V_OH-V_tO)^2)/(2*L_p);
disp(i_DP,"Static current of the inverter (A)")
P_D=V_DD*i_DP;
disp(P_D,"Power dissipated (W)")
V_O=0.08; // Output voltage (V) found by equating the current of Q_N=18uA
disp(V_O," The output voltage of the inverter (V) ")

// 10.4c
i_D0=uC_n*W_n*((V_DD-V_tO)^2)/(2*2*10^-6); // i_D0=i_D(0) (A) current i_D at t=0
v_O=2.5; // (V)
V_t=V_tO+0.5*(sqrt(v_O+2*fie_f)-sqrt(2*fie_f)); // at v_O=2.5V
i_DtPLH=(uC_n*W_n*(V_DD-v_O-V_t)^2)/(2*L_n); // i_DtPLH=i_D(t_PLH) (A) current i_D at t=t_PLH
i_Dav=(i_D0+i_DtPLH)/2; // i_Dav=i_D|av (A) average discharge current
t_PLH=C*(V_DD/2)/i_Dav;
disp(t_PLH,"t_PHL (s)")

// 10.4d
// Case with v_t going low
i_D0=uC_n*W_n*((V_DD-V_tO)^2)/(2*2*10^-6); // i_D0=i_D(0) (A) current i_D at t=0
i_DtPHL=uC_n*W_n*((V_DD-V_tO)*v_O-(v_O^2)/2)/(L_n); // i_DtPHL=i_D(t_PHL) (A) current i_D at t=T_PHL
i_Dav=(i_D0+i_DtPHL)/2; // i_Dav=i_D|av (A) average discarge current
t_PHL=C*(V_DD/2)/i_Dav;
disp(t_PHL,"t_PHL (s)")

// 10.4e
t_P=(t_PHL+t_PLH)/2;
disp(t_P,"t_P (s)")