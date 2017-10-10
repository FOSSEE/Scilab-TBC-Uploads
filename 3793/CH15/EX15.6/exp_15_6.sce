clear;
clc;
v=600;
betta=22;
gammma=10;
Vd=(2*v)/(cosd(betta)+cosd(gammma));
El=(Vd*%pi)/(3*sqrt(2));
mprintf("RMS value of voltage is %.3f KV",El);
