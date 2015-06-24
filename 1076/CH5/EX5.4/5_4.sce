clear;
clc;

m=2.292;
g=9.81;
l=152;
Pw=39.063;
dia=2.068e-2;
ar=3.065;
stress=1054.63;

//(a)
w=m*g;
T=stress * ar *g;
Fw=Pw* g * dia;
Ft= sqrt(w^2 + Fw^2);
S=Ft * l *l /(8* T);
mprintf("\n Sag= %.2f m", S);
Sy= S * w/Ft;
mprintf("\n Vertical Component of Sag= %.3f m", fix(Sy*1000)/1000);
