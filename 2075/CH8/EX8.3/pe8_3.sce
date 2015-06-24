//example 8.3
clc;funcprot(0);
//Initialization of Variable
V=220;//line voltage
f=50;//hertz
R=80;//load resistance
K=50;//di/dt
pi=3.1428;
//calculation
L=V*2^.5/K;
disp(L,"inductance in microH:")
Z=2*pi*f*L;
disp(Z*1e-6,"load impedence at angle 90 degree in ohm")
clear()
