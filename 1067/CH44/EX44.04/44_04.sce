clear;
clc;
j=400;
N=500;
w=2*%pi*N/60;
w=round(w);
ke=.5*j*(w^2);
mprintf("the kinetic energy=%dJoules \tor\t%fKiloJoules",ke,ke/1e3);
