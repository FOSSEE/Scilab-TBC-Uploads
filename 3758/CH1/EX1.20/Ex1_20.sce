clc;
s=0.85; //specific gravity of oil
d=1.5*10^-3; //diameter of glass tube in meter
r=d/2; //calculating radius of glass tube in meter
h=1.25*10^-2; //height of capillary in meter
p=15; //bubble pressure in kg/m^2
w=1000; //specific weight of water in kg/m^3
p1=p-(s*w*h); //effective pressure attributable to surface tensions
t=(p1*r)/2; //calculating unit surface energy or surface tension in kg/m
printf('unit surface energy is %f kg/m',t);
