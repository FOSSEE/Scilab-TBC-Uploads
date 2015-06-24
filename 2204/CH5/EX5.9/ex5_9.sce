// Exa 5.9
clc;
clear;
close;
// Given data
alpha = 1.414;
f_c = 1.5;// in kHz
f_c = f_c * 10^3;// in Hz
C1 = 2/alpha;// in F
C2 = alpha/2;// in F
R1 = 1;// in ohm
R2 = R1;// in ohm 
R_F = 2;// in ohm
Omega_c = 2*%pi*f_c;// in rad/sec
R = 1/Omega_c;// in ohm
R = R * 10^7;// in ohm
R1 = R;// in ohm
R2= R1;// in ohm
R_F = 2*R;// in ohm
C1 = C1/10^7;// in F
C2 = C2/10^7;// in F
disp(R1*10^-3,"The value of R1 and R2 in k ohm");
disp(C1*10^9,"The value of C1 in nF is");
disp(C2*10^9,"The value of C2 in nF is");
disp(R_F*10^-3,"The value of R_F in k ohm");
