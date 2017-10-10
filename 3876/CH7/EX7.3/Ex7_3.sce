//Chapter 7 Conductivity

clc;
clear;

//Initialisation of Variables
i= 20 //amp
t= 50 ///min
F= 96500 //coloumb
we= 8 //gms
Mo= 32 ///gms
M= 27 //gms
n= 3

//CALCULATIONS
nf= i*t*60/F
V= we*22.4/Mo*nf
G= M/n
q= G*nf

//RESULTS
mprintf("Volume of oxygen produced= %.2f lit",V)
mprintf("\nQuantity of aluminium produced= %.2f geams",q)
