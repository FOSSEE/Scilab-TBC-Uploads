//Example 19.7
clc
Uo=(4*%pi*10^-7)
I=5//in A
r=4*10^-3
B=(Uo*I)/(2*%pi*r)
disp(B,"Magnetic field in T=")
q=1.6*10^-19
v=1.5*10^3//in m/s
F=q*v*B
disp(F,"Force in Newton=")

