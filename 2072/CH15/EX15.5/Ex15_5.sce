//Example 15.5
clc
k_e=8.99*10^9 //N.m^2/c^2
q1=7*10^-6// in C
q2=5*10^-6//in C
r1=0.4
r2=0.5
E1=(k_e*q1)/(r1^2)
E2=(k_e*q2)/(r2^2)
Ex=(k_e*q2)/(r2^2)
disp(E1,"Magnitude of E1 in N/C")
disp(E2,"Magnitude of E2 in N/C")
disp(Ex,"Magnitude in x direction in N/C")
Ey=(3.93*10^5)+(-1.44*10^5)
disp(Ey,"Magnitude in y direction in N/C")
phi=atand(Ey/Ex)
disp(phi,"Angle in degree=")
//Answer given in book is wrong