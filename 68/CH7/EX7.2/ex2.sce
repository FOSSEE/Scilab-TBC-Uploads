// Example 7.2 : Analysis of Active loaded MOS differential amplifier
W=7.2*10^-6; // (m)
L=0.36*10^-6; // (m)
C_gs=29*10^-15; // (F)
C_gd=5*10^-15; // (F)
C_db=5*10^-15;  // (F)
uC_n=387*10^-6; // uC_n=u_nC_ox (A/V^2)
uC_p=86*10^-6; // uC_p=u_pC_ox (A/V^2)
V_an=5; // V_an=V'_An (V/um) (V)
V_ap=6; // V_ap=V'_Ap (V/um) (V)
I=0.2*10^-3; // (A)
R_SS=25000; // (ohm)
C_SS=0.2*10^-12; // (F)
C_S=25*10^-15; // (F)
K_n=uC_n*W/L;
I_D=100*10^-6; // bias current (A)
V_OV=sqrt(2*I_D/K_n);
g_m=I/V_OV;
g_m1=g_m;
g_m2=g_m;
r_o1=V_an*0.36/(0.1*10^-3);
r_o2=r_o1;
K_p=uC_p*W/L;
V_OV34=sqrt(2*I_D/K_p); // V_OV3,4
g_m3=2*0.1*10^-3/V_OV34;
g_m4=g_m3;
r_o3=V_ap*0.36/(0.1*10^-3);
r_o4=r_o3;
A_d=g_m*(r_o2*r_o4)/(r_o2+r_o4);
disp(A_d,"A_d (V/V)")
A_cm=-1/(2*g_m3*R_SS);
disp(A_cm,"A_cm (V/V)")
CMRR=20*log10(-A_d/A_cm); // negative sign to make A_cm positive
disp(CMRR,"CMRR in dB")
C_gd1=5*10^-15; // (F)
C_db1=5*10^-15; // (F)
C_db3=5*10^-15; // (F)
C_gs3=20*10^-15; // (F)
C_gs4=20*10^-15; // (F)
C_m=C_gd1+C_db1+C_db3+C_gs3+C_gs4;
C_gd2=5*10^-15; // (F)
C_db2=5*10^-15; // (F)
C_gd4=5*10^-15; // (F)
C_db4=5*10^-15; // (F)
C_x=25*10^-15; // (F)
C_L=C_gd2+C_db2+C_gd4+C_db4+C_x;
disp("poles and zeroes of A_d")
R_o=r_o2*r_o4/(r_o2+r_o4)
f_p1=1/(2*%pi*C_L*R_o);
disp(f_p1,"f_p1 (Hz)")
f_p2=g_m3/(2*%pi*C_m);
disp(f_p2,"f_p2 (Hz)")
f_Z=2*f_p2;
disp(f_Z,"f_Z (Hz)")
disp("Dominant pole of CMRR is at location of commom-mode gain zero")
f_Z=1/(2*%pi*C_SS*R_SS);
disp(f_Z,"f_Z (Hz)")