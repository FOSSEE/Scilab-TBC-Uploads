clear;
clc;
pole=2;
s=50;
v=11;
pf=.8;
H=6;
Ns=3000;
inpinc=62000;
K=H*s;
mprintf("Kinetic energy stored is %.3f MJ\n",K);
po=s*pf;
pi=inpinc*735.5/10^6;
f=50;
Ap=pi-po;
A=(Ap*360*f)/(2*H*s);
mprintf("acceleration of generator is %.3f degree electrical per second sqr\n",A);