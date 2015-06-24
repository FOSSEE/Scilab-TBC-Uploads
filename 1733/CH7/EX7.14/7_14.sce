//7.14
clc;
V=500;
Ia=200;
Ra=0.1;
Pi=V*Ia*0.5;
printf("Input power=%.0f W", Pi)
Va=0.5*500;
Eb=Va-Ia*Ra;
If=2;
Kt=1.4;
w=Eb/(Kt*If)
N=w*60/(2*%pi)
printf("\nSpeed=%.2f rpm", N)
T=Kt*If*Ia;
printf("\nTorque=%.0f N-m", T)