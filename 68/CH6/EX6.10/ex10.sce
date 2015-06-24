// Example 6.10 : To determine A_M, f_t, f_Z, f_3dB
// Consider the CS amplifier
A_M=-12.3;// (V/V) found from Example 6.9
C_L=25*10^-15; // (F)
C_gd=5*10^-15; // (F)
R_L=9.82*10^3; // (F)
g_m=1.25*10^-3; // (mho)
f_H=1/(2*%pi*(C_L+C_gd)*R_L); // 3dB frequency
disp(f_H,"f_H (Hz)")
f_t=-A_M*f_H; // Unity-gain frequency - sign to make gain positive as only magnitude is considered
disp(f_t,"f_t (Hz)")
f_Z=g_m/(2*%pi*C_gd); // frequency of the zero
disp(f_Z,"f_Z (Hz)")
I_D=400*10^-6; // I_D must be quadrupled by changing I_REF to 400uF
V_OV=0.32; 
g_m=I_D/(V_OV/2);
disp(g_m,"g_m (A/V)")
r_o1=5*0.36/(0.4*10^-3);
disp(r_o1,"r_o1 (ohm)")
r_o2=6*0.36/(0.4*10^-3);
disp(r_o2,"r_o2 (ohm)")
R_L=(r_o1*r_o2)/(r_o1+r_o2);
disp(R_L,"R_L (ohm)")
A_M=-g_m*R_L;
disp(A_M,"A_M (V/V)")
f_H=1/(2*%pi*(C_L+C_gd)*R_L);
disp(f_H,"f_H (Hz)")
f_t=f_H*-A_M; // Unity gain frequency
disp(f_t,"f_t (Hz)")