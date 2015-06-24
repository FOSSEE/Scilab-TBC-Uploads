clear;
//clc();
D=3;..//spacing between the conductors in m
r=0.01;..//radius of each conductor in m
r1=0.7788*r;
mu=50;..//relative permeability of steel
a=log([D/r1]);
b=log([D/r]);

l=2*10^(-7)*a*(10^6);..//inductance of each conductor in henry per km
printf("\n the inductive reactance  is:  %.2f mH/km\n ",l);

loop_l=2*l;
printf("\n the loop inductance  is:  %.2f mH/km\n ",loop_l);



react=2*(%pi)*50*loop_l*.001;
printf("\n the inductive reactance  is:  %.2f Ohm/km\n ",react);

//loop inductance with steel conductors

l_in=0.5*mu;
l_ex=2*b;

l_inductance=2*(l_in+l_ex)/10;
printf("\n the loop inductance  is:  %.2f mH/km\n ",l_inductance);

2
