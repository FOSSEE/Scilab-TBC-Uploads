clear;
clc;

r1=.8;
r2=.86;
r3=.92;

Q1=(1-r1)^2;
R1=1-Q1;

Q2=(1-r2)^2;
R2=1-Q2;

Q3=(1-r3)^2;
R3=1-Q3;

R=R1*R2*R3;


mprintf("\nNet system reliability = %.3f ",R);
