clc
d=0.9144; // m
C=100; // m^(1/2)s^(-1)
R=d/2;

H=[0.1 0.15 0.2 0.25 0.201];

theta=acos((R-H)/R);
A=R^2*(theta-sin(2*theta)/2);
P=2*R*theta;
m=A/P;

// An analytical solution for depth H is not possible. It is therefore necessary to use a graphical or trial and error approach.

// The corresponding values of theta, A, P, MHD (m), Q are given below as per the taken values of H.

theta=[0.674 0.834 0.973 1.101 0.975];
A=[0.039 0.070 0.106 0.146 0.107];
P=[0.616 0.763 0.890 1.006 0.891];
m=[0.063 0.092 0.119 0.145 0.120];
Q=[248.7 543.2 932.2  1412.9 940.0];

plot(H,Q)

i=[0.201 0.201];
j=[0 940];
plot(i,j,'r')

k=[0 0.201];
l=[940 940];
plot(k,l,'r')

xtitle("", "Depth H", "Flowrate Q")

Depth=0.201; // m
disp("The depth in the channel =")
disp(Depth)
disp("m")