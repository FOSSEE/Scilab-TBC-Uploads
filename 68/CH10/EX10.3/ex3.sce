// Example 10.3 : To determine the parameters of pseudo NMOS inverter
// Consider a pseudo NMOS inverter
uC_n=115*10^-6; //uC_n=u_n*C_ox (A/V^2)
uC_p=30*10^-6; //uC_p=u_p*C_ox (A/V^2)
V_tn=0.4; // (V)
V_tp=-0.4; // (V)
V_DD=2.5; // (V)
W_n=0.375*10^-6; // W for Q_N (m)
L_n=0.25*10^-6; // L for Q_N (m)
r=9;

// 10.3a
V_OH=V_DD;
disp(V_OH,"V_OH (V)")
V_OL=(V_DD-V_tn)*(1-sqrt(1-1/r));
disp(V_OL,"V_OL (V)")
V_IL=V_tn+(V_DD-V_tn)/sqrt(r*(r+1));
disp(V_IL,"V_IL (V)")
V_IH=V_tn+2*(V_DD-V_tn)/(sqrt(3*r));
disp(V_IH,"V_IH (V)")
V_M=V_tn+(V_DD-V_tn)/sqrt(r+1);
disp(V_M,"V_M (V)")
NM_H=V_OH-V_IH;
NM_L=V_IL-V_OL;
disp(NM_L,NM_H,"The highest and the lowest values of allowable noise margin (V)")

// 10.3b
WbyL_p=uC_n*(W_n/L_n)/(uC_p*r); // WbyL_p=(W/L)_p
disp(WbyL_p,"(W/L)_p")

//10.3c
I_stat=(uC_p*WbyL_p*(V_DD-V_tn)^2)/2;
disp(I_stat,"I_stat (A)")
P_D=I_stat*V_DD;
disp(P_D,"Static power dissipation P_D (W)")

//10.3d
C=7*10^-15;
t_PLH=1.7*C/(uC_p*WbyL_p*V_DD);
disp(t_PLH,"t_PLH (s)")
t_PHL=1.7*C/(uC_n*(W_n/L_n)*sqrt(1-0.46/r)*V_DD);
disp(t_PHL,("t_PHL (s)"))
t_p=(t_PHL+t_PLH)/2;
disp(t_p,"t_p (s)")