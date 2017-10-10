//Chapter 4 Solutions Nonelectrolytes

clc;
clear;

//Initialisation of Variables
m= 164.2 //gms
M= 60 //gms
V= 0.8 //lit
d= 1.026 //g/cc
mw= 18.02 //gms

//CALCULATIONS
M1= m/M
n= M1/V
G= V*1000*d
G1= G-m
m1= M1*1000/G1
n1= G1/mw
x= M1/(M1+n1)
y= 1-x
p= x*100
p1= y*100
P2= m*100/G

//RESULTS
mprintf("Molarity= %.3f M",n)
mprintf("\nMolality= %.3f m",m1)
mprintf("\nMole fraction of solute= %.4f",x)
mprintf("\nMol per cent of solute= %.2f percent",p)
mprintf("\nMol per cent of solvent= %.2f percent",p1)
mprintf("\nMol per cent acetic acid by weight= %.2f percent",P2)
