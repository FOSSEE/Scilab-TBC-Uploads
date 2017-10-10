clc;
clear;
// r = p*a + q*b + s*c
p=1
q=2
s=3

//Calculation
LCM=lcm({p,q,s}) //LCM for computing miller indices
rx=1/p*LCM //reciprocals
ry=1/q*LCM
rz=1/s*LCM

mprintf("The plane depicted in the figure is denoted by (%i,%i,%i)",rx,ry,rz)
