// exa 8.12 Pg 236
clc;clear;close;

// Given Data
d=6;//mm
Do=75;// mm
tau=350;// N/mm.sq.
G=84;// kN/mm.sq.

printf('\n (i) neglecting the effect of curvature')
dm=Do-d;// mm
C=dm/d;// spring index
Ks=1+0.5/C;// shear stress factor
//tau=Ks*(8*Fmax*C)/(%pi*d**2)
Fmax=tau/(Ks*(8*C)/(%pi*d**2));// N
printf('\n Axial load = %.1f N',Fmax)
delBYi=8*Fmax*C**3/(G*10**3*d);// mm/turn
printf('\n deflection per active turn = %.3f mm/turn',delBYi)
printf('\n\n (ii) considering the effect of curvature')
Kw=(4*C-1)/(4*C-4)+0.615/C;// Wahl's correction factor
//tau=Kw*(8*Fmax*C)/(G*d)
Fmax=tau/(Kw*8*C/(%pi*d**2));
printf('\n Axial load = %.1f N',Fmax)
delBYn=8*Fmax*C**3/(G*10**3*d);// mm/turn
printf('\n deflection per active turn = %.3f mm/turn',delBYn)
// Note - answer in the textbook is wrong for last part.
