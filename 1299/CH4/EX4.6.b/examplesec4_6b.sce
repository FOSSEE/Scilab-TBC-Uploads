//Example sec 4.6b
//example of canonical form
clear;clc;
xdel(winsid());
A=[1 2 1;0 1 3;1 1 1];
B=[1;0;1];
C=[1 1 0];
V=[C;C*A;C*A^2]

D=eye(3,3)
s=%s
E=s*D-A
det(E)

//the characteristic equation i.e. det(E)=s^3-3*s^2-s-3=0 is of the form of
//s^3+a2*S^2+a1*s+a0=0. therefore comparing two equation.

a2=-3
a1=-1
a0=-3
M=[a1 a2 1;a2 1 0;1 0 0]
F=M*V
Q=inv(F)
A1=inv(Q)*A*Q
B1=inv(Q)*B
C1=C*Q
