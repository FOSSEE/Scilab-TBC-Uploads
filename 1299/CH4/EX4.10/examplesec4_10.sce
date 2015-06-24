//Example sec 4.10
//Controllable companion form
clear;clc;
xdel(winsid());
A=[1 0 0;0 2 0;0 0 3]
B=[1 0;0 1;1 1]
b1=[1;0;1]
b2=[0;1;1]
u=[B A*B A^2 B]
u1=[1 0 1;0 1 0;1 1 3]
// u1 is arranged from [b1 A^(v1-1)*b1 A^(v2-1)*b2]
// v1 and v2 are controllability indices.
u1=[b1 A*b1 b2]
v1=2;
v2=1;
inv(u1)

p1=[-0.5 -0.5 0.5]
p2=[0 1 0]
P=[p1;p1*A;p2]
A1=P*A*inv(P)
B1=P*B
C=eye(3,3)
s=%s
D=s*C-A1
E=det(D)
routh_t(E)
//to get equation E, A must be equal to
A2=[0 1 0;0 0 1;-6 -11 -6]
B2=[0 0;1 0.5;0 1]
N1=[6 1.5 4.5;-6 -11 8]
N=N1*P
