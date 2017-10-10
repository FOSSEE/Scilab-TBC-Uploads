//Exa:2.2.3
clc;
clear;
close;
V_s=400 //3 phase supply voltage (in volts)
Z_ph=8+%i*6 //impedance per phase(in ohms)
V_AN=V_s/sqrt(3)
I_ph=V_AN/Z_ph
disp(abs(I_ph),'phase current(in A)=')
disp(atand(imag(I_ph)/real(I_ph)),'phase=')
I_L=abs(I_ph)
disp(I_L,'line current(in A)=')
pf=cosd(atand(imag(I_ph)/real(I_ph)))
disp(pf,'power factor=')
kW=sqrt(3)*V_s*I_L*pf*10^-3
disp(kW,'power(in kW)=')