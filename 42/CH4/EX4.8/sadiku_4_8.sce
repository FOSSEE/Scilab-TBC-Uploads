clear;
clc;
r1=0,r2=1,z1=-2,z2=2,q1=0,q2=2*%pi;
Q=integrate('p^2','p',r1,r2)*integrate('(cos(Q)^2)','Q',q1,q2)*integrate('1','z',z1,z2);
disp(Q,'Total charge is =');