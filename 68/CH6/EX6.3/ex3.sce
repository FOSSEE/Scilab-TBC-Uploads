// Example 6.3 : Comparison between NMOS transistor and npn transistor
// For npn transistor
disp("For npn transistor")
I_C=10*10^-6; // (A)
V_T=0.025; // (V)
V_A=35; // (V)
C_jeO=5*10^-15; // (F)
C_uO=5*10^-15; // (F)
C_L=1*10^-12; // (F)
disp("The data calculated for I_C=10uA")
g_m=I_C/V_T;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_C;
disp(r_o,"r_o (ohm)")
A_O=V_A/V_T;
disp(A_O,"A_O (V/V)")
T_F=10*10^-12;
C_de=T_F*g_m;
disp(C_de,"C_de (F)")
C_je=2*C_jeO;
disp(C_je,"C_je (F)")
C_pi=C_de+C_je;
disp(C_pi,"C_pi (F)")
C_u=C_uO;
disp(C_u,"C_u (F)")
f_T=g_m/(2*%pi*(C_pi+C_u));
disp(f_T,"f_T (Hz)")
f_t=g_m/(2*%pi*C_L);
disp(f_t,"f_t (Hz)")
disp("The data calculated for I_C=100uA")
I_C=100*10^-6;
g_m=I_C/V_T;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_C;
disp(r_o,"r_o (ohm)")
A_O=V_A/V_T;
disp(A_O,"A_O (V/V)")
T_F=10*10^-12;
C_de=T_F*g_m;
disp(C_de,"C_de (F)")
C_je=2*C_jeO;
disp(C_je,"C_je (F)")
C_pi=C_de+C_je;
disp(C_pi,"C_pi (F)")
C_u=C_uO;
disp(C_u,"C_u (F)")
f_T=g_m/(2*%pi*(C_pi+C_u));
disp(f_T,"f_T (Hz)")
f_t=g_m/(2*%pi*C_L);
disp(f_t,"f_t (Hz)")
disp("The data calculated for I_C=1mA")
I_C=1*10^-3;
g_m=I_C/V_T;
disp(g_m,"g_m (A/V)")
r_o=V_A/I_C;
disp(r_o,"r_o (ohm)")
A_O=V_A/V_T;
disp(A_O,"A_O (V/V)")
T_F=10*10^-12;
C_de=T_F*g_m;
disp(C_de,"C_de (F)")
C_je=2*C_jeO;
disp(C_je,"C_je (F)")
C_pi=C_de+C_je;
disp(C_pi,"C_pi (F)")
C_u=C_uO;
disp(C_u,"C_u (F)")
f_T=g_m/(2*%pi*(C_pi+C_u));
disp(f_T,"f_T (Hz)")
f_t=g_m/(2*%pi*C_L);
disp(f_t,"f_t (Hz)")
// For NMOS transistor
L=0.4*10^-6; // (m)
C_L=1*10^-12; // (F)
disp("The data calculated for I_D = 10uA")
I_D=10*10^-6; // (A)
WbyL=0.12*I_D; // WbyL=(W/L)
disp(WbyL*10^6,"(W/L)")
g_m=8*I_D;
disp(g_m,"g_m (A/V)")
r_o=2/I_D;
disp(r_o,"r_o (ohm)")
A_O=g_m*r_o;
disp(A_O,"A_O (V/V)")
C_gs=(2/3)*WbyL*0.4*0.4*5.8+0.6*WbyL*0.4;
disp(C_gs,"C_gs (fF)")
C_gd=0.6*WbyL*0.4;
disp(C_gd,"C_gd (fF)")
f_T=g_m/(2*%pi*(C_gs*10^-15+C_gd*10^-15));
disp(f_T,"f_T (Hz)")
f_t=g_m/(2*%pi*C_L)
disp(f_t,"f_t (Hz)")
disp("The data calculated for I_D = 100uA")
I_D=100*10^-6; // (A)
WbyL=0.12*I_D; // WbyL=(W/L)
disp(WbyL*10^6,"(W/L)")
g_m=8*I_D;
disp(g_m,"g_m (A/V)")
r_o=2/I_D;
disp(r_o,"r_o (ohm)")
A_O=g_m*r_o;
disp(A_O,"A_O (V/V)")
C_gs=(2/3)*WbyL*0.4*0.4*5.8+0.6*WbyL*0.4;
disp(C_gs,"C_gs (fF)")
C_gd=0.6*WbyL*0.4;
disp(C_gd,"C_gd (fF)")
f_T=g_m/(2*%pi*(C_gs*10^-15+C_gd*10^-15));
disp(f_T,"f_T (Hz)")
f_t=g_m/(2*%pi*C_L)
disp(f_t,"f_t (Hz)")
disp("The data calculated for I_D = 1mA")
I_D=1*10^-3; // (A)
WbyL=0.12*I_D; // WbyL=(W/L)
disp(WbyL*10^6,"(W/L)")
g_m=8*I_D;
disp(g_m,"g_m (A/V)")
r_o=2/I_D;
disp(r_o,"r_o (ohm)")
A_O=g_m*r_o;
disp(A_O,"A_O (V/V)")
C_gs=(2/3)*WbyL*0.4*0.4*5.8+0.6*WbyL*0.4;
disp(C_gs,"C_gs (fF)")
C_gd=0.6*WbyL*0.4;
disp(C_gd,"C_gd (fF)")
f_T=g_m/(2*%pi*(C_gs*10^-15+C_gd*10^-15));
disp(f_T,"f_T (Hz)")
f_t=g_m/(2*%pi*C_L)
disp(f_t,"f_t (Hz)")