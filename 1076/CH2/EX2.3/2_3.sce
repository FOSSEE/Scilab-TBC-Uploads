clear
clc;
Dia=1.63;
Dist=3*100;
Reff=.7788*.5*Dia;
Reff=round(Reff*1e3)*1e-3
L = .4605 * log10(Dist/Reff);

mprintf("L= %.4f mH/km",L)
