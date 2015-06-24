// Example 6.9: Analysis of CMOS CS amplifier
// Consider CMOS open source amplifier
I_D=100*10^-6; // (A)
I_REF=I_D; 
uC_n=387*10^-6; // u_n*C_ox=uC_n (A/V^2)
uC_p=86*10^-6; // u_n*C_ox=uC_n (A/V^2)
W=7.2*10^-6; // (m)
L=0.36*10^-6; // (m)
V_An=5*10^-6; // (A)
R_sig=10*10^3; // (ohm)
V_OV=sqrt(2*I_D*L/(W*uC_n));
g_m=I_D/(V_OV/2);
disp(g_m,"g_m (A/V)")
r_o1=5*0.36/(0.1*10^-3);
disp(r_o1,"r_o1 (ohm)")
r_o2=6*0.36/(.1*10^-3);
disp(r_o2,"r_o2 (ohm)")
R_L=r_o1*r_o2/(r_o1+r_o2);
disp(R_L,"R_L (ohm)")
A_m=-g_m*R_L;
disp(A_m,"A_m (V/V)")
C_gs=20*10^-15; // (F)
C_gd=5*10^-15; // (F)
C_in=C_gs+C_gd*(1+g_m*R_L); // using miller equivalence
disp(C_in,"C_in (F)")
f_H=1/(2*%pi*C_in*R_sig);
disp(f_H,"f_H (Hz)")
R_gs=10*10^3; // (ohm) using open circuit  time constants methods
R_L=9.82*10^3; // (ohm)
R_gd=R_sig*(1+g_m*R_L) + R_L;
disp(R_gd,"R_gd (ohm)")
R_CL=R_L;
T_gs=C_gs*R_gs;
disp(T_gs,"T_gs (s)")
T_gd=C_gd*R_gd;
disp(T_gd,"T_gd (s)")
C_L=25*10^-15;
T_CL=C_L*R_CL;
disp(T_CL,"T_CL (s)")
T_H=T_gs+T_gd+T_CL;
disp(T_H,"T_H (s)")
f_H=1/(2*%pi*T_H); // 3dB frequency
disp(f_H,"f_H (Hz)")
f_Z=g_m/(2*%pi*C_gd); // frequency of the zero
disp(f_Z,"f_Z (Hz)")
// Denominator polynomial
p=poly([1 1.16*10^-9 0.0712*10^-18],'s','coeff')
disp(p,"Denominator polynomial")
s=roots(p);
f_P2=s(2)/(-2*%pi);
f_P1=s(1)/(-2*%pi)
disp(f_P2,f_P1, "The frequencies f_P1  (Hz) and f_P2 (Hz) are found as the roots of the denominator frequency")
f_H=f_P1;
disp(f_H,"Another estimate for f_H (Hz)")