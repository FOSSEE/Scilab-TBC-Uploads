//Example 16.3
clc
k_e=8.99*10^9 //N.m^2/c^2
q1=5*10^-6// in C
q2=-2*10^-6//in C
r1=0.4
r2=0.5
V1=(k_e*q1)/(r1)
V2=(k_e*q2)/(r2)
disp("Solution a")
disp(V1,"Magnitude of V1 in v")
disp(V2,"Magnitude of V2 in v")
disp("solution b")
vp=V1+V2
disp(vp,"Magnitude of Vp in v")
q3=4*10^-6//in C
w=vp*q3
disp(w,"work done in Joule=")

