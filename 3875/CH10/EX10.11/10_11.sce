clc;
clear;
W=1.2*1.6*10^-19 //work function in eV
h=6.6*10^-34 //Plancks constant in J-s
v=5.5*10^14 // frequency of light in Hz
e=1.6*10^-19 //charge in C

V_s=((h*v)-W)/e

mprintf("The stopping potential is = %1.2f volt",V_s)
//Answer varies due to round off error.
