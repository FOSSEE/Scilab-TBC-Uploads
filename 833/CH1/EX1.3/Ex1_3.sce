//Caption:Find number of turns per limb on the (a) high voltage and (b) low voltage sides
//Exa:1.3
clc;
clear;
close;
A=0.0386//cross sectional area of core(in m^2)
B=1//maximum flux density (in weber/m^2)
f=50//frequency (in hertz)
V_1=3300//voltage on primary side (in volt)
V_2=240//voltage on secondary side (in volt)
C=B*A
n_2=V_2/(4.44*C*f)
T_2=n_2/2
disp(T_2,'(a)number of turns on low voltage side is=')
T_1=T_2*V_1/V_2
disp(T_1,'(b)number of turns on high voltage side is=')