//Exa:2.2.1
clc;
clear;
close;
I_L=10//line current (in amp)
V_s=20*10^3//supply voltage(in volts)
pf=0.8//lagging
theta=acosd(pf)
V_LN=V_s/sqrt(3)
disp(V_LN*10^-3,'(a)line to neutral voltage(in kv)=')
V_L=V_LN
disp(V_L*10^-3,'(b)output line to line voltage(in kv)=')
kVA=sqrt(3)*V_s*10^-3*I_L
disp(kVA,'(c)kVA=')
kW=kVA*pf
disp(kW,'kW=')
kVAR=kVA*sind(theta)
disp(kVAR,'kVAR=')
