// Example 6.12 : Comparison between Cascode amplifier and CS amplifier
// 6.12a 
// CS amplifier
g_m=1.25*10^-3;
r_o=20*10^3;
R_L=r_o*r_o/(r_o+r_o);
C_gs=20*10^-15;
R_sig=10000;
C_gd=5*10^-15;
C_L=5*10^-15;
C_db=5*10^-15;
A_o=g_m*r_o;
disp(A_o,"A_o (V/V)")
A_v=-A_o/2;
disp(A_v,"A_v (V/V)")
T_H=C_gs*R_sig+C_gd*[(1+g_m*R_L)*R_sig+R_L]+(C_L+C_db)*R_L;
disp(T_H,"T_H (s)")
f_H=1/(2*%pi*T_H);
disp(f_H,"f_H (Hz)")
f_t=-A_v*f_H;
disp(f_t,"f_t (Hz)")
// Cascode amplifier
g_m1=1.25*10^-3;
r_o1=20000;
X=0.2;
r_o2=20000;
R_L=20000;
A_o1=g_m1*r_o1;
disp(A_o1,"A_o1 (V/V)")
gm2plusgmb2=g_m1+X*g_m;
A_vo2=1+(gm2plusgmb2)*r_o2;
disp(A_vo2,"A_vo2 (V/V)")
R_out1=r_o1;
R_in2=1/(gm2plusgmb2)+R_L/A_vo2;
disp(R_in2,"R_in2 (ohm)")
R_d1=R_out1*R_in2/(R_out1+R_in2);
disp(R_d1,"R_d1 (ohm)")
R_out=r_o2+A_vo2*r_o1;
disp(R_out,"R_out (ohm)")
vo1byvi=-g_m1*R_d1;
disp(vo1byvi,"(v_o1/v_i) (V/V)")
A_v=-A_o1*A_vo2*R_L/(R_L+R_out);
disp(A_v,"A_v (V/V)")
C_gs1=20*10^-15;
R_sig=10*10^3;
gm1Rd1=1.5;
C_gd1=5*10^-15;
C_gs2=20*10^-15;
C_db2=5*10^-15;
C_gd2=5*10^-15;
C_db1=5*10^-15;
T_H=R_sig*[C_gs1+C_gd1*(1+gm1Rd1)]+R_d1*(C_gd1+C_db1+C_gs2)+((R_L*R_out)/(R_L+R_out))*(C_L+C_db2+C_gd2);
f_H=1/(2*%pi*T_H);
disp(T_H,"T_H (s)")
disp(f_H,"f_H (Hz)")
f_t=-A_v*f_H;
disp(f_t,"f_t (Hz)")
// 6.12b 
// CS amplifier
A_v=-12.5;
R_L=10*10^3;
disp(A_v,"A_v (V/V)")
T_H=(C_gd+C_L+C_db)*R_L;
disp(T_H,"T_H (s)")
f_H=1/(2*%pi*T_H);
disp(f_H,"F_H (Hz)")
f_t=-A_v*f_H;
disp(f_t,"f_t (Hz)")
// Cascode amplifier
R_L=640*10^3;
R_out=640*10^3;
R_out1=20*10^3;
A_v=-A_o1*A_vo2*R_L/(R_L+R_out);
disp(A_v,"A_v (V/V)")
R_in2=1/gm2plusgmb2+R_L/A_vo2;
disp(R_in2,"R_in2 (ohm)")
R_d1=R_in2*R_out1/(R_in2+R_out1);
disp(R_d1,"R_d1 (ohm)")
T_H=R_d1*(C_gd1+C_db1+C_gs2)+(R_L*R_out/(R_L+R_out))*(C_L+C_gd2+C_db2);
disp(T_H,"T_H (s)")
f_H=1/(2*%pi*T_H);
disp(f_H,"f_H (Hz)")
f_t=-A_v*f_H;
disp(f_t,"f_t (Hz)")