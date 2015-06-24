//Example 16.9
clc
k=3.7
e0=8.85*10^-12//in c2/N.m2
A=6*10^-4//in m2
d=1*10^-3//in m
c=(k*e0*A)/d
disp("solution a")
disp(c,"Capacitance in farad=")
disp("solution b")
E_max=16*10^6//in v/m
delta_v_max=E_max*d
disp(delta_v_max,"Voltage in volt")
Q_max=delta_v_max*c
disp(Q_max,"Maximum charge in columb=")