//Ex:6.2
clc;
clear;
close;
X_c=3.18;
R=100;
V_rip=1*(X_c/sqrt(R^2+X_c^2));
printf("Ripple voltage = %f V",V_rip);