//Caption: (a) terminal voltage on load (b) voltage on load at high voltage terminals (c) efficiency of transformer
//Exa:1.5 
clc;
clear;
close;
n=10//ratio of high voltage to low voltage
V_1=200//Voltage on low voltage side(in volt)
x_m=231//Magnetising resistance(in ohms)
r_c=400//Core loss resistance(in ohms)
r_e=0.1//Equivalent resistance referred to low voltage side(in ohms)
x_e=0.5//Equivalent reactance referred to low voltage side(in ohms)
r_l=7.9//Load resistance(in ohms)
x_l=5.5//Load reactance(in ohms)
I_m=V_1/x_m
I_c=V_1/r_c
I_0=I_c+(%i*I_m)
R_l=r_l+r_e
X_l=x_l+x_e
I=V_1/(R_l+(%i*X_l))
I_1=I+I_0
V_2=V_1-I*(r_e+(%i*x_e))
v=sqrt(V_2*conj(V_2))
disp(v,'(a)terminal voltage on load(in volt)=')
V=v*n
disp(V,'(b)voltage on load at hgih voltage terminals(in volt)=')
P_o=v*real(I)
P_i=V_1*real(I_1)
eff=(P_o/P_i)*100
disp(eff,'(c)efficiency of transformer is(in %)=')