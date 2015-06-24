// Exa 10.1
clc;
clear;
close;
//given data
V_pos= 12;// in volt
V_Neg= -12;// in volt
V=V_pos-V_Neg;
R1=15;// in k ohm
R1=R1*10^3;// in ohm
C1=0.01;// in micro F
C1=C1*10^-6;// in  F
C2=10;// in micro F
C2=C2*10^-6;// in  F
// (i)
f_out= 1.2/(4*R1*C1);// in Hz
disp(f_out*10^-3,"Free running frequency in kHz");
// (ii)
f_L= (8*f_out)/V;// in Hz
disp(f_L*10^-3,"Lock range in k Hz");
f_C= sqrt(f_L/(2*%pi*3.6*10^3*C2));// in Hz
disp(f_C,"Capture range in Hz")


