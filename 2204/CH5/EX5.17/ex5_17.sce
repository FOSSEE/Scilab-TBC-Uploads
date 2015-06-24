// Exa 5.17
clc;
clear;
close;
// Given data
alpha = 1.732;
k_f = 1.274;
C1 = 1;// in F
C2 = C1;// in F
R1 = alpha/2;// in ohm
R2 = 2/alpha;// in ohm
R_F = R2;// in ohm
f_3dB = 2;// in kHz
f_3dB = f_3dB * 10^3;// in Hz
f_c = f_3dB/k_f;// in Hz
Omega_c = 2*%pi*f_c;// in rad/sec
R1 = R1/Omega_c;// in ohm
R1 = R1 * 10^8;// in ohm
R2 = R2/Omega_c;// in ohm
R2 = R2 * 10^8;// in ohm
R_F = R2;// in ohm
C1 = C1/10^8;// in F
disp(R1*10^-3,"The value of R1 in kΩ is : ")
disp(R2*10^-3,"The value of R2 and R_F in kΩ is : ")
disp(C1*10^9,"The value of C1 and C2 in nF is : ")
