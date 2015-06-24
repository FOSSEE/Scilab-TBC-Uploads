//Caption:Find (a)Speed of the motor (b)Speed at which torque will be maximum (c)Ratio of maximum to full load torque
//Exa:11.5
clc;
clear;
close;
V=3300//Voltage supplied to induction motor(in volts)
p=10//Number of poles
f=50//frequency(in hertz)
R_r=0.015//Rotor resistance per phase(in ohms)
X_r=0.25//Standstill reactance per phase(in ohms)
s=2.5//Slip(in %)
n_s=(f*120)/p
n=n_s*(1-(s/100))
disp(n,'(a)Speed of the motor(in r.p.m)=')
S=R_r/X_r
N=n_s*(1-S)
disp(N,'(b)Speed at which torque will be maximum(in r.p.m)=')
T_f=(s/100)*R_r/((R_r^2)+(((s/100)^2)*(X_r^2)))
T_m=S*R_r/((R_r^2)+((S^2)*(X_r^2)))
R=T_m/T_f
disp(R,'(c)Ratio of maximum to full load torque=')