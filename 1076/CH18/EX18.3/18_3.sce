clear;
clc;

l=3;
r=.25e-2;
rho=100;
h=.5;

//(a)
Ra=(rho/(%pi * l)) *(log(2*l/r)-1);
mprintf("\n (a) Resistance when buried at surface of earth = %.2f ohm", Ra)

//(b)
Rb=(rho/(%pi * l)) *(log(2*l/sqrt(2*r*h))-1);
mprintf("\n (a) Resistance when buried .5m under earth earth = %.2f ohm", Rb)

//(c)
Rc=Ra/2
mprintf("\n (c) Resistance when buried infinte deep = %.2f ohm", Rc)

