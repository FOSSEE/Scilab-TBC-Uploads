// Determining Hysteresis loss
clc;
clear;

fluxmax=1.5;

x=15/(10^-2);
y=1;

f=50;

a=x*y;// loss for one centimetre square.

area=0.6;// in centimetre square.

hy_ls= area*a;

vol=1500*(10^-6);

hyls_cycle= vol*hy_ls;

hyls_sec= hyls_cycle*f;

disp('watts',hyls_sec,'The Hysteresis loss =')
