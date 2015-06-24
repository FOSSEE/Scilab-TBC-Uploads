//Example sec 10.1.1
//mass, dashpot, spring arrangement.
clear;clc;
xdel(winsid());
M=1
K=2
F=2
A=[0 1;-2 -2]
C=eye(A)
s=%s
D=s*C-A
X=inv(D)*[1;1]
//taking the laplace transform of X
disp("X(t)=sqrt(5)*sin(t+inv(tan 0.5));sqrt(10)*sin(t+inv(tan -1/3))")
disp("The system is asymptotically stable")
