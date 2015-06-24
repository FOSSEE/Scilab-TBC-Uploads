//Example No. 3.13.4
clc;
clear;
close;
format('v',7);

Rr=73;//Ω
Z=120*%pi;//Ω(For free space)
//Aem=0.13*lambda²
AemBylambda_sqr=0.13;
leBYlambda=2*sqrt(AemBylambda_sqr*Rr)/sqrt(Z);
disp("Effective length in meter is "+string(leBYlambda)+"*lambda");
