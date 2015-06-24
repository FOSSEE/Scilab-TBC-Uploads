//Example No. 3.13.3
clc;
clear;
close;
format('v',5);
Rr=73;//Ω(Radiation Resistance)
Z=120*%pi;//Ω(For free space)
//le=lambda/%pi
AemBYlambda_sqr=(1/%pi)^2*Z/(4*Rr);
disp("Maximum effective aperture in m² is "+string(AemBYlambda_sqr)+"*lambda²");
