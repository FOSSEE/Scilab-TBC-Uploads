clear;
//clc();

v=11;
f=50;
d=20;
r=15;
er=2.4;
la=0.031;
l=2.5;

a=r*2/d;
b=log([a]);

cap=er/(18*b);
tot_cap=cap*l;
printf("\n the total capacitance is:  %.2f F\n ",tot_cap);

//ic

ic=2*3.14*f*tot_cap*v;
printf("\n the charging current is:  %.2f A\n ",ic/1000);

//reactive var
var=v*ic;
printf("\n the reactive var is:  %.2f kVAR\n ",var/1000);

//dielectric loss

pd=v*ic*la;
printf("\n the dielectric loss is:  %.2f W\n ",pd);

ri=v*v/pd;..//resistance in mega-ohm
printf("\n the resistance is:  %.2f M-OHM\n ",ri);
