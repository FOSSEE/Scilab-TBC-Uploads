clear;
clc;

r= 1.6e-2;
d= 45e-2;
D=12;
Dscb=sqrt(r*d);
Deq=(D*D*(2*D))^(1/3);
Cn= .02412/(log10 (Deq/Dscb));
mprintf("Capacitance per phase per km= %.4f e-6 F/km\n",Cn);
