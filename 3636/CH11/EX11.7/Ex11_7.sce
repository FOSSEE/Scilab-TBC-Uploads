clear;
clc;
VBB=24 //in V
r1=3 //in k-ohm
r2=5 //in k-ohm

//Calculation
n=r1/(r1+r2)
VP=(n*VBB)+0.7

mprintf("peak-point voltage= %1.1f V",VP)
