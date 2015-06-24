//Caption:Calculate (i)-required size of guide,(ii)-frequencies that can be used for this mode of propagation
//Exa:4.10
clc;
clear;
close;
wl_c=10;//in cm 
c=3*10^10;//in cm/s
r=wl_c/(2*%pi/1.841);//in cm
area=%pi*r^2;//in sq. cm
f_c=c/wl_c;
disp(r,'Radius of circular waveguide(in cm) =');
disp(area,'Area of cross-section of circular waveguide(in cm) =');
disp('Frequency above');
disp(f_c);
disp('can be propagated');