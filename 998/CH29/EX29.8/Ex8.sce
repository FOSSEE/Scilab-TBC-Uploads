//Ex:8
clc;
clear;
close;
r_e=6378;//radius of earth in km
h=1000;//altitude in km
cosx=r_e/(r_e+h);
v_s=7.35;//Velocity of satellite in km
v_tr=v_s*cosx;//component of satellite velocity towardsthe observer
printf("Component of the satellite velocity=%f km/sec",v_tr);