// Example 10.1 : To determine t_PHL, t_PLH and t_P
// Consider CMOS inverter
C_ox=6*10^-15; // (F/um^2)
uC_n=115*10^-6; //uC_n=u_n*C_ox (A/V^2)
uC_p=30*10^-6; //uC_p=u_p*C_ox (A/V^2)
V_tn=0.4; // (V)
V_tp=-0.4; // (V)
V_DD=2.5; // (V)
W_n=0.375*10^-6; // W for Q_N
L_n=0.25*10^-6; // L for Q_N
W_p=1.125*10^-6; // W for Q_P
L_p=0.25*10^-6; // L for Q_P
C_gd1=0.3*W_n*10^-9; // (F)
C_gd2=0.3*W_p*10^-9; // (F)
C_db1=10^-15; // (F)
C_db2=10^-15; // (F)
C_g3= 0.375*0.25*6*10^-15+2*0.3*0.375*10^-15; // (F)
C_g4=1.125*0.25*6*10^-15+2*0.3*1.125*10^-15; // (F)
C_w=0.2*10^-15; // (F)
C=2*C_gd1+2*C_gd2+C_db1+C_db2+C_g3+C_g4+C_w; // (F)
i_DN0=uC_n*W_n*(V_DD-V_tn)^2/(2*L_n); // i_DN0 = i_DN(0) (A)
i_DNtPHL=uC_n*W_n*((V_DD-V_tn)*V_DD/2-((V_DD/2)^2)/2)/L_n; // i_DNtPHL = i_DN(t_PHL) (A)
i_DNav=(i_DN0+i_DNtPHL)/2; // i_DN|av (A)
t_PHL=C*(V_DD/2)/i_DNav;
disp(t_PHL,"t_PHL (s)")
t_PLH=1.3*t_PHL; // Since W_p/W_n=3 and u_n/u_p=3.83 thus t_PLH is greater than t_PHL by 3.83/3
disp(t_PLH,"t_PLH (s)")
t_P=(t_PHL+t_PLH)/2; 
disp(t_P,"t_P (s)")