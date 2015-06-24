// Example 9.2 : To determine A_v,f_t,f_P,SR and P_D of folded cascode amplifier
// Consider a design of the folded-cascode op amp
I=200*10^-6; // (A)
I_B=250*10^-6; // (A)
V_OV=0.25; // (V)
k_n=100*10^-6; // k_n=k'_n (A/V^2)
k_p=40*10^-6; // k_p=k'_p (A/V^2)
V_A=20; // V_A=V'_A (V/um)
V_DD=2.5; // (V)
V_SS=2.5; // (V)
V_t=0.75; // (V)
L=1*10^-6; // (m)
C_L=5*10^-12; // (F)
disp("Data calculated for Q1")
I_D=I/2;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_n*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
disp("Data calculated for Q2")
I_D=I/2;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_n*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
disp("Data calculated for Q3")
I_D=I_B-I/2;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_p*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
disp("Data calculated for Q4")
I_D=I_B-I/2;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_p*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
disp("Data calculated for Q5")
I_D=I_B-I/2;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_n*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
disp("Data calculated for Q6")
I_D=I_B-I/2;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_n*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
disp("Data calculated for Q7")
I_D=I_B-I/2;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_n*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
disp("Data calculated for Q8")
I_D=I_B-I/2;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_n*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
disp("Data calculated for Q9")
I_D=I_B;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_p*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
disp("Data calculated for Q10")
I_D=I_B;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_p*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
disp("Data calculated for Q11")
I_D=I;
disp(I_D,"I_D (A)")
g_m=2*I_D/V_OV;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_D;
disp(r_o,"r_o (ohm)")
WbyL=2*I_D/(k_n*V_OV^2); // WbyL =W/L
disp(WbyL,"W/L")
gmro=160; // gmro=g_m*r_o
disp(gmro,"g_m*r_o for all transistors is (V/V)")
V_GS=1;
disp(V_GS,"V_GS for all transistors is (V)")
V_ICMmin=-V_SS+V_OV+V_OV+V_t;
disp(V_ICMmin,"The lowest value of input common mode voltage (V)")
V_ICMmax=V_DD-V_OV+V_t;
disp(V_ICMmax,"The highest value of input common mode voltage (V)")
v_omin=-V_SS+V_OV+V_OV+V_t;
disp(v_omin,"The lowest value of output swing allowable (V)")
v_omax=V_DD-V_OV-V_OV;
disp(v_omax,"The highest value of output swing allowable (V)")
r_o2=200*10^3; // r_o calculated for Q2
r_o10=80*10^3; // r_o calculated for Q10
R_o4=gmro*(r_o2*r_o10)/(r_o2+r_o10);
r_o8=133333; // r_o calculated for Q8
R_o6=gmro*r_o8;
R_o=R_o4*R_o6/(R_o4+R_o6);
disp(R_o,"Output resistance (ohm)")
G_M=0.0008;
A_v=G_M*R_o;
disp(A_v,"Voltage gain (V/V)")
f_t=G_M/(2*%pi*C_L);
disp(f_t,"Unity gain bandwidth (Hz)")
f_P=f_t/A_v;
disp(f_P,"Dominant pole frequency (Hz)")
SR=I/C_L;
disp(SR,"Slew Rate (V/s)")
I_t=0.5*10^-3; // total current
V_S=5; // Supply voltage
P_D=I_t*V_S;
disp(P_D,"Power dissipated (W)")

