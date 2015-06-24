//Caption:Find the (a) n ratio (b) load current referred to high voltage side (c) load impedance on low voltage side for full load (d) and impedance referred to high voltage side
//Exa:1.1
clc;
clear;
close;
P_s=25000//Supplied power (in VA)
V_1=1910//Voltage on primary side (in volt)
V_2=240//Voltage on secondary side (in volt)
f=50//frequency in hertz
n=V_1/V_2
disp(n,'(a)n-ratio=')
I_1=P_s/V_1
disp(I_1,'(b)load current referred to high voltage side (in A)=')
I_2=P_s/V_2
Z_2=V_2/I_2
disp(Z_2,'(c)load impedance on low voltage side for full load (in ohm)=')
Z_1=Z_2*(n^2)
disp(Z_1,'(d)impedance referred to high voltage side(in ohm)=')