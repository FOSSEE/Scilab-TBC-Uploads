//Chapter 7 Conductivity

clc;
clear;

//Initialisation of Variables
I= 50 //amp
t= 1 //hr
F= 96500 //amp-sec
mh= 1.01 //gms
mc= 35.46 //gms
ms= 107.88 //gms
mb= 79.9 //gms
mf= 55.85 //gms
V= 11.2 //lit
e= 8 //v

//CALCULATIONS
N= I*t*60*60/F
Mh= mh*N
Mc= mc*N
Ms= ms*N
Mb= mb*N
Mf= mf*N
v= N*V
E= e*I*60*60

//RESULTS
mprintf("Quantity of hydrogen produced= %.2f gms",Mh)
mprintf("\nQuantity of chlorine produced= %.2f gms",Mc)
mprintf("\nQuantity of silver produced= %.2f gms",Ms)
mprintf("\nQuantity of bromine produced= %.2f gms",Mb)
mprintf("\nQuantity of ferrous ion  produced= %.2f gms",Mf)
mprintf("\nVolume occupied by gases= %.2f lit",v)
mprintf("\nEnergy expenditure= %.0f joules",E)
