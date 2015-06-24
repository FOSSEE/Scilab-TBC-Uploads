//Example 15.44
//state space representation of LTI system
clear;clc;
xdel(winsid());

A=[0 1;-2 -3];
B=[0;1];
C=[1 1];
D=[0];
E=[0];

H=syslin('c',A,B,C);
s=%s;
g=eye(2,2);
P=(-s*g)-A
sm=[P B;C D];
H1=sm2ss(sm)

