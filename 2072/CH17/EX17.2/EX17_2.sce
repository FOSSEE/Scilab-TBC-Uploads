//Example 17.2
clc
M=63.5//IN G
rho=8.95
v=M/rho
electrons=6.02*10^23
n=(electrons*10^6)/v
I=10//in c/s
q=1.60*10^-19//in c
A=3*10^-6//in m2
vd=(I)/(n*q*A)
disp("Solution a")
disp(vd,"The drift speed in m/s=")
k_b=1.38*10^-23
T=293
m=9.11*10^-31
v_rms=sqrt((3*k_b*T)/m)
disp(v_rms,"Drift speed of electron in m/s=")