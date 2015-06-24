// Calculating the change in length and the force applied
clc;
dR=0.013;
R=240;
l=0.1;
Gf=2.2;
dl=(dR/R)*l/Gf;
disp(dl,'change in length(m)=')
strain=dl/l;
E=207*10^9;
s=E*strain;
A=4*10^-4;
F=s*A;
disp(F,'Force(N)')