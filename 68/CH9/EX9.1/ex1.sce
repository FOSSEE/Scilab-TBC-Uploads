// Example 9.1 Design of two-stage CMOS op-amp  
A_v=4000; // (V/V)
V_A=20; // (V)
k_p=80*10^-6; // k'_n=k_n (A/V^2)
k_n=200*10^-6; // k'_p=k_P (A/V^2)
V_SS=1.65; // (V)
V_DD=1.65; // (V)
V_tn=0.5; // (V)
V_tp=0.5; // (V)
C_1=0.2*10^-12; // (F)
C_2=0.8*10^-12; // (F)
I_D=100*10^-6; // (A)
V_OV=sqrt(V_A^2/A_v);
WbyL_1=I_D*2/(V_OV^2*k_p); // WbyL_1=(W/L)_1
disp(WbyL_1,"Required (W/L) ratio for Q_1")
WbyL_2=WbyL_1; // WbyL_2=(W/L)_2
disp(WbyL_2,"Required (W/L) ratio for Q_2")
WbyL_3=I_D*2/(V_OV^2*k_n); // WbyL_3=(W/L)_3
disp(WbyL_3,"Required (W/L) ratio for Q_3")
WbyL_4=WbyL_3; // WbyL_4=(W/L)_4
disp(WbyL_4,"Required (W/L) ratio for Q_4")
I_D=200*10^-6;
WbyL_5=I_D*2/(V_OV^2*k_p); // WbyL_5=(W/L)_5
disp(WbyL_5,"Required (W/L) ratio for Q_5")
I_D=500*10^-6;
WbyL_7=2.5*WbyL_5; // WbyL_7=(W/L)_7 
disp(WbyL_7,"Required (W/L) ratio for Q_7")
WbyL_6=I_D*2/(V_OV^2*k_n); // WbyL_6=(W/L)_6
disp(WbyL_6,"Required (W/L) ratio for Q_6")
WbyL_8=0.1*WbyL_5; // WbyL_8=(W/L)_8
disp(WbyL_8,"Required (W/L) ratio for Q_8")
V_ICMmin=-V_SS+V_OV+V_tn-V_tp;
disp(V_ICMmin,"The lowest value of input common mode voltage")
V_ICMmax=V_DD-V_OV-V_OV-V_tp;
disp(V_ICMmax,"The highest value of input common mode voltage")
v_omin=-V_SS+V_OV;
disp(v_omin,"The lowest value of output swing allowable")
v_omax=V_DD-V_OV;
disp(v_omax,"The highest value of output swing allowable")
R_o=20/(2*0.5);
disp(R_o,"Input resistance is practically infinite and output reistance is (ohm)")
G_m2=2*I_D/V_OV;
disp(G_m2,"G_m2 (A/V)")
f_P2=3.2*10^-3/(2*%pi*C_2);
disp(f_P2,"f_P2 (Hz)")
R=1/G_m2;
disp(R,"To move the transmission zero to s=infinite , r value selected as (ohm)")
f_t=f_P2*tand(15); // Phase margin of 75 degrees , thus phase shift due to seccond pole must be 15 degrees
disp(f_t,"f_t (Hz)")
G_m1=2*100*10^-6/V_OV; // I_D = 100uA
C_C1=G_m1/(2*%pi*f_t);
disp(C_C1,"C_C1 (F)")
SR=2*%pi*f_t*V_OV;
disp(SR,"SR (V/s)")