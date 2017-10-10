//Exa:2.2.2
clc;
clear;
close;
Z_ph=8+%i*6//impedance per phase (in ohms)
V_AN=400//in volts
I_ph=V_AN/Z_ph
disp(abs(I_ph),'Phase current (in A)=')
disp(atand(imag(I_ph)/real(I_ph)),'phase=')
I_L=sqrt(3)*abs(I_ph)
disp(I_L,'Line current (in A)=')
pf=cosd(atand(imag(I_ph)/real(I_ph)))
disp(pf,'power factor=')
P=sqrt(3)*V_AN*I_L*pf*10^-3
disp(P,'Power absorbed (in KW)=')