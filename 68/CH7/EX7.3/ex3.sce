// Example 7.3 : To determine all parameters for different transistor
I_REF=90*10^-6; // (A)
V_tn=0.7; // (V)
V_tp=0.8; // Magnitude is cconsidered
uC_n=160*10^-6; // uC_n=u_n*C_ox
uC_p=40*10^-6; // uC_p=u_p*C_ox
V_A=10; // (V)
V_DD=2.5; // (V)
V_SS=2.5; // (V)
L=0.8*10^-6; // (m)
r_o2=222; // (ohm)
r_o4=222; // (ohm)
g_m1=0.3; // (mho)
A_1=-g_m1*r_o2*r_o4/(r_o2+r_o4);
disp(A_1,"A_1 (V/V)")
r_o6=111; // (ohm)
r_o7=111; // (ohm)
g_m6=0.6; // (mho)
A_2=-g_m6*r_o6*r_o7/(r_o6+r_o7);
disp(A_2,"A_2 (V/V)")
disp("For Q_1")
W=20*10^-6; // (m)
I_D=I_REF/2; // (A)
disp(I_D,"I_D (A)")
K_p=uC_p*W/L;
V_OV=sqrt(2*I_D/K_p);
disp(V_OV,"V_OV (V)")
V_GS=V_tp+V_OV;
disp(V_GS,"V_GS (V)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
disp("For Q_2")
W=20*10^-6; // (m)
I_D=I_REF/2; // (A)
disp(I_D,"I_D (A)")
K_p=uC_p*W/L;
V_OV=sqrt(2*I_D/K_p);
disp(V_OV,"V_OV (V)")
V_GS=V_tp+V_OV;
disp(V_GS,"V_GS (V)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
disp("For Q_3")
W=5*10^-6; // (m)
I_D=I_REF/2; // (A)
disp(I_D,"I_D (A)")
K_n=uC_n*W/L;
V_OV=sqrt(2*I_D/K_n);
disp(V_OV,"V_OV (V)")
V_GS=V_tn+V_OV;
disp(V_GS,"V_GS (V)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
disp("For Q_4")
W=5*10^-6; // (m)
I_D=I_REF/2; // (A)
disp(I_D,"I_D (A)")
K_n=uC_n*W/L;
V_OV=sqrt(2*I_D/K_n);
disp(V_OV,"V_OV (V)")
V_GS=V_tn+V_OV;
disp(V_GS,"V_GS (V)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
disp("For Q_5")
W=40*10^-6; // (m)
I_D=I_REF; // (A)
disp(I_D,"I_D (A)")
K_p=uC_p*W/L;
V_OV=sqrt(2*I_D/K_p);
disp(V_OV,"V_OV (V)")
V_GS=V_tp+V_OV;
disp(V_GS,"V_GS (V)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
disp("For Q_6")
W=10*10^-6; // (m)
I_D=I_REF;
disp(I_D,"I_D (A)")
K_n=uC_n*W/L;
V_OV=sqrt(2*I_D/K_n);
disp(V_OV,"V_OV (V)")
V_GS=V_tn+V_OV;
disp(V_GS,"V_GS (V)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
disp("For Q_7")
W=40*10^-6; // (m)
I_D=I_REF;
disp(I_D,"I_D (A)")
K_p=uC_p*W/L;
V_OV=sqrt(2*I_D/K_p);
disp(V_OV,"V_OV (V)")
V_GS=V_tp+V_OV;
disp(V_GS,"V_GS (V)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
disp("For Q_8")
W=40*10^-6; // (m)
I_D=I_REF;
disp(I_D,"I_D (A)")
K_p=uC_p*W/L;
V_OV=sqrt(2*I_D/K_p);
disp(V_OV,"V_OV (V)")
V_GS=V_tp+V_OV;
disp(V_GS,"V_GS (V)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
A_O=A_1*A_2;
disp(20*log10(A_O),"The dc open loop gain in dB")
v_ICMmin=-2.5+1;
disp(v_ICMmin,"Lower limit of input common-mode (V)")
v_ICMmax=2.2-1.1;
disp(v_ICMmax,"Upper limit of input common-mode (V)")
v_Omax=V_DD-V_OV;
disp(v_Omax,"Highest allowable output voltage (V)")
v_Omin=-V_SS+V_OV;
disp(v_Omin,"Lowest allowable output voltage (V)")