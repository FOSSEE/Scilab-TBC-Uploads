// exa 8.3 Pg 229
clc;clear;close;

// Given Data
Fi=40;// N
d=3;// mm
C=6;// spring index
n=15;// factor of safety
tau=650;// N/mm.sq.
G=84;// kN/mm.sq.

// Wahl's correction factor
Kw=(4*C-1)/(4*C-4)+0.615/C;// Wahl's correction factor
printf("\n Wahl''s correction factor = %.4f ",Kw)

// Initial tortional shear stress
tau_i=Kw*(8*Fi*C)/(%pi*d**2);// MPa
printf('\n Initial tortional shear stress = %.2f MPa',tau_i)
k=G*10**3*d/(8*C**3*n);// spring stiffness
printf('\n spring stiffness = %.2f N/mm',k)
// Spring load to cause yielding
//tau=Kw*(8*Fi*C)/(%pi*d**2)
F=tau/(Kw*(8*C)/(%pi*d**2))
printf('\n Spring load to cause yielding = %.1f N',F)
