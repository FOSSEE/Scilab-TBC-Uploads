// To determine whether corona will be present in the air space round the conductor
clear
clc;
d=2.5;
di=3;// internal diameter
do=9;// external diameter
ri=di/2;// internal radius
ro=do/2;// external diameter
g1max=20/(1.25*log(ri/(d/2))+ .208*1.5*log(ro/ri));
mprintf("g1max=%.0f kV/cm \n",g1max);
mprintf("Since the gradient exceeds 21.1/kV/cm , corona will be present.")
