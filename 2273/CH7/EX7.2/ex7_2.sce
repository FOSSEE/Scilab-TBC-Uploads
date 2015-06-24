//Determine whether corona will be there or not
clear;
clc;
//soltion
//given
Er=4;//relative permittivity
r=3.52/2;//cm
Vp=28;//kV//Voltage between conductor and an earthed clamp surrounding the porcelain
g1=poly(0,"g1");
r1=4/2;//cm
r2=10/2;//cm
g2=r*g1/(Er*r1);
g1max=roots(g1*r*log(r1/r)+g2*r1*log(r2/r1)-28);
printf("Maximum gradient on conductor surface= %.3f kV/cm\n",g1max);
printf("If gradient exceeds dielectric strength of air (21.1kV/cm) the corona will be present \n In this case it is present");
