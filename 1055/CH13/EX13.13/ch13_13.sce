//To Determine the reactance of the reactor to prevent the brakers being overloaded
clear 
clc;
Sb=75;// Base MVA
Xpu=.15*Sb/15;// p.u reactance of the generator
Xt=-%i*.08;//p.u reactanceof the transformer
X=9.75/112;
Xa=X*33*33/75;
mprintf("the reactance of the reactor =%.3f ohms\n",Xa);
