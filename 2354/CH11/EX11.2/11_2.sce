//example 11.2
clc; funcprot(0);
// Initialization of Variable
SGoil=0.9;//specific gravity of oil
wat=62.4;//gamma of water
SGhg=13.6;//specific gravity of mercury
h1=36.0/12;
h2=6.0/12;
h3=9.0/12;
pair=-SGoil*wat*(h1+h2)+SGhg*wat*h3;
pgage=pair/144.0;
disp(pgage,"Gauge pressure in lbf/in^2(psi)");
clear()
