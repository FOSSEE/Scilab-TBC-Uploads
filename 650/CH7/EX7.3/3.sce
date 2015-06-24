clc
n=0.015; // m^(-1/3)s
i=1;
H=[4.0 4.1 4.2 4.13];

A=12*H;
P=12+2*H;
m=A/P;
C=m^(1/6)/n;

Q=C*A*sqrt(m*i);

// An analytical solution for depth H is not possible. It is therefore necessary to use a graphical or trial and error approach.

// The corresponding values of A, P, MHD (m), Q are given below as per the taken values of H.
A=[48 49.2 50.4 49.56];
P=[20 20.2 20.4 20.26];
m=[2.4 2.44 2.47 2.45];
Q=[57.36 59.38 61.39 59.98];

plot(H,Q)

r=[4.13 4.13];
s=[57 60];
plot(r,s,'r')

t=[4 4.13];
u=[60 60];
plot(t,u,'r')

xtitle("", "Depth H", "Flowrate Q")

// Therefore the depth is found to be approximately 4.13

depth=4.13; //m
disp("Depth = ")
disp(depth)
disp("m")

C1=(2.45)^(1/6)/n;
disp("Chezy Coefficient =")
disp(C1)