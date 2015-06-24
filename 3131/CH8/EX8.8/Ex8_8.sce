clear all; clc;
disp("Ex 8_8")
W=2000//N
r=5//mm
l=2//mm
phi_s=atan(0.25)
theta=atan(l/(2*%pi*r))
M=2*(W*r*tan(phi_s+theta))
a=M/1000
printf('\n\n M = %0.1f Nmm = %0.2f Nm',M,a)
