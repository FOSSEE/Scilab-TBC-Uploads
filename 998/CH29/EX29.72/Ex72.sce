//Ex:72
clc;
clear;
close;
R=6378;//radius of earth in km
h=35786;// height in km
r=R+h;//in km
a=(2*R+35786+300)/2;//semi major axis in km
u=39.8*10^13;//N-sq.m/kg
v_a=sqrt(u*((2/r*1000)-(1/a*1000)));//m/s
V_a=v_a/1000000;//km/s
v_c=sqrt(u/r*1000);
dv=v_c/1000000-V_a;//icremental velocity
printf("The incremental velocity=%f km/s",dv);