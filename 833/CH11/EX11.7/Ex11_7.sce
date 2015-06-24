//Caption: Find Current per phase in the rotor (a)when rotor is at standstill and star connected impedance of 4.1+%i2 per phase is connected in series with rotor   (b)when rotor runs at 3% slip with short circuit at the slip rings
//Exa:11.7
clc;
clear;
close;
V=69.28//Induced e.m.f(in volts)
r=0.9//Resistance of rotor per phase(in ohm)
x=6//Standstill rectance of rotor per phase(in ohm)
z=4.1+(%i*2)
s=3//Slip(in%)
V_r=V/sqrt(3)
R_r=r+real(z)
X_r=(%i*2)+(%i*x)
Z=R_r+X_r
I_r=V_r/Z
disp(I_r,'(a)Current when rotor is at standstill=')
E=(s/100)*V_r
Imp=r+(%i*(s/100)*x)
i_r=E/Imp
disp(i_r,'(b)Current when rotor runs at 3% slip=')