clear;
clc;
D=3e2;
d1=6e2;
d2=7e2;
rad=.9;

reff=.7788* rad;
Daa=(d1^2  +  d1^2)^(1/2);
Dcc=Daa;
Dbb=d2;
GMRa=sqrt(reff*Daa);
GMRb=sqrt(reff*Dbb);
GMRc=sqrt(reff*Dcc);
Ds=(GMRa*GMRb*GMRc)^(1/3);
Ds=round(Ds*10)/10

Dab=(D^2  +  ((d2-d1)/2)^2)^(1/2);
Dcb=Dab;
Dc1b1=Dab;
Da1b1=Dab;

Dab1=(D^2  +  (((d2-d1)/2)+d1)^2)^(1/2);
Da1b=Dab1;
Dc1b=Dab1;
Dcb1=Dab1;

Dac=2*D;
Da1c1=Dac;
Da1c=(d1);
Dac1=Da1c;

GMRab=(Dab*Da1b1*Da1b*Dab1)^(1/4);
GMRbc=(Dcb*Dc1b1*Dc1b*Dcb1)^(1/4);
GMRac=(Dac*Da1c1*Da1c*Dac1)^(1/4);

Deq=(GMRab*GMRbc*GMRac)^(1/3);
Deq=round(Deq*10)/10

L=2e-7 * log (Deq/Ds) * 1e3;
mprintf("L=%.3f *1e-4 H/phase/km",L*1e4);
