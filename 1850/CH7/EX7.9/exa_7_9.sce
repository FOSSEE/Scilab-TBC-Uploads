// Exa 7.9
clc;
clear;
close;
//given data
C= 0.1;// in microF
C=C*10^-6;// in F
R=12;// in kohm
R=R*10^3;// in ohm
R1=120;// in kohm
R1=R1*10^3;// in ohm
Rf=1;// in Mohm
Rf=Rf*10^6;// in ohm
V_sat= 10;// in volt
// Part(i)
f=Rf/(4*R1*R*C);//in Hz
disp(f*10^-3,"Signal Frequency in kHz")

// Part(ii)
Vp_p= 2*R1*V_sat/Rf;// in Vp_p
disp(Vp_p,"Amplitude of the triangular wave in Vp_p")

// Part(iii)
Vp_p= (V_sat)-(-V_sat);
disp(Vp_p,"Amplitude of the square wave in Vp_p")
