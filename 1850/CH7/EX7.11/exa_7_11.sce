// Exa 7.11
clc;
clear;
close;
//given data
C1= 0.01;// in microF
C1=C1*10^-6;// in F
R1=120;// in kohm
R1=R1*10^3;// in ohm
R2=1.2;// in kohm
R2=R2*10^3;// in ohm
R3=6.8;// in kohm
R3=R3*10^3;// in ohm
V_sat= 15;// in volt
// Part(a)
Vp_p= 2*(R2/R3)*V_sat;//in volt
disp(Vp_p,"Peak to peak amplitude of triangular wave in volt")

// Part(b)
fo= R3/(4*R1*C1*R2);//in Hz
disp(fo*10^-3,"Frequency of triangular wave in kHz");
