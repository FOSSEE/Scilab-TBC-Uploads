clear;
//clc();
r=10.5;..//radius of the conductor
d_ab=3;
d_bc=5;
d_ca=3.6;

Deq=(d_ab*d_bc*d_ca)^(1/3);

r1=0.7788*r/1000;

a=log([Deq/r1]);

l=2*10^(-4)*a;
printf("\n the inductance is:  %.5f H/km\n ",l);

xl=2*(%pi)*50*l/10000;
printf("\n the inductive reactance is:  %f Ohm/km\n ",xl);
