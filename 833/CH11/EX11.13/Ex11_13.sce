//Caption:Find (a)Equivalent rotor current (b)Stator current (c)Power factor (d)Stator input (e)Rotor input (f)Efficiency
//Exa:11.13
clc;
clear;
close;
V=440//Voltage supplied(in volts)
f=50//frequency(in hertz)
Z_s=1.5+(%i*3)//Stator impedance per phase(in ohms)
Z_r=1.6+(%i*1)//Rotor impedance per phase(in ohms)
Z_m=3+(%i*40)//Magnetising impedance per phase(in ohms)
P_wf=300//Friction and winding loss(in watt)
s=0.04//Slip
Z=40+(%i*1)
z=Z*Z_m/(Z+Z_m)
Zt=z+Z_s
I1=(V/sqrt(3))/Zt
E=(V/sqrt(3))-(I1*Z_s)
I2=E/Z
disp(I2,'(a)Equivalent Rotor current(in A)=')
disp(I1,'(b)Stator current(in A)=')
pf=cosd(atand(imag(Zt)/real(Zt)))
disp(pf,'(c)Power factor=')
P_s=sqrt(3)*V*sqrt(I1*conj(I1))*pf
disp(P_s,'(d)Stator input(in watt)=')
P_r=3*(I2*conj(I2))*(real(Z_r)/s)
disp(P_r,'(e)Rotor input(in watt)=')
P_ro=P_r*(1-s)
P_me=P_ro-P_wf
e=(P_me/P_s)*100
disp(e,'(e)Efficiency(in%)=')