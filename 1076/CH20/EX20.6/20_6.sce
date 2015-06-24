clear;
clc;

r1=.8;
r2=.86;
r3=.92;

Rs=r1*r2*r3;
Q=(1-Rs)*(1-Rs);
R=1-Q;
mprintf("\nNet system reliability = %.3f ",R);
