clear;
clc;

r1=.95;
r2=.92;
r3=.98;
r4=.88

R=r1*r2*r3*r4;

Q=(1-R)*(1-R);
Rs=1-Q;
mprintf("\nNet system reliability = %.4f ",Rs);
