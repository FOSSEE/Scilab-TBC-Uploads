//example 10.3
clc; funcprot(0);
//parta
s=12;
A=1/2*6*3.62;
C=1/2*1.81*3;
B1=1/2*2.5*1.509;//B'
B11=1/2*2.414*4;//B''
sigmaall=24;
Mmax=max(A,C,B1,B11);
S=Mmax*s/sigmaall;
disp(S,"section modulus in in^3/ft");
//partb

A=7.583;
Mmax=7.583*s^2/8;
S=Mmax*s/sigmaall;
disp(S,"section modulus in in^3/ft");

