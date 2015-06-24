//Example sec 4.6a
//example of canonical form
clear;clc;
xdel(winsid());
A=[1 2 1;0 1 3;1 1 1];
B=[1;0;1];
C=[1 0 0;0 1 0;0 0 1]
S=cont_mat(A,B)
s=%s;
D=s*C-A
det(D)

//the characteristic equation i.e. det(D)=s^3-3*s^2-s-3=0 is of the form of
//s^3+a2*S^2+a1*s+a0=0. therefore comparing two equation.

a2=-3
a1=-1
a0=-3
M=[a1 a2 1;a2 1 0;1 0 0]

P=S*M
A1=inv(P)*A*P
B1=inv(P)*B
