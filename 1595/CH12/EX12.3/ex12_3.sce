//Transmission Lines : example 12-3 : (pg 579)
L=73.75*10^-9;
C=29.5*10^-12;
d=1;//distance
t=sqrt(L*C);
Vp=d/t;
printf("\nthe delay introduced is t = sqrt(L.C) = %.11f s",t);
printf("\nThe velocity of propagation is, \nVp = d/sqrt(L.C) = %.f ft/s",Vp);