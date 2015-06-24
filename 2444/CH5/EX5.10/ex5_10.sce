// Exa 5.10
clc;
clear;
close;
format('v',5)
// Given data
R_G = 3.9*10^6;// in ohm
R_L = 18*10^3;// in ohm
R_D = R_L;// in ohm
g_m = 2*10^-3;// in A/V
r_o = 250*10^3;// in ohm
Cgs = 1*10^-12;// in F
Cgd = 0.25*10^-12;// in F
Rsig = 50*10^3;// in ohm
A_VM =-R_G/(R_G+Rsig)*g_m*r_o*R_D*R_L/(r_o*R_D+R_D*R_L+R_L*r_o);
disp(A_VM,"The midband gain is");
RdasL = (r_o*R_D*R_L)/( (r_o*R_D) +(R_D*R_L)+(R_L*r_o) );// in ohm
Ceq = (1 + g_m*RdasL)*Cgd;// in F
Cin = Cgs+Ceq;// in F
f2 = 1/( 2*%pi*Cin*( (Rsig*R_G)/(Rsig+R_G) ) );// in Hz
f2 = f2 * 10^-3;// in kHz
disp(f2,"The upper 3dB frequency in kHz is");
