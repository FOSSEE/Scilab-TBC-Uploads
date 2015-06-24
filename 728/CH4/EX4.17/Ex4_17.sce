//Caption:Determine the diameter of waveguide & guide wavelength
//Exa:4.17
clc;
clear;
close;
c=3*10^10;//in cm/s
f=6*10^9;//in Hz
f_c=0.8*f;
wl_c=c/f_c;
D=1.841*wl_c/%pi;
wl_o=c/f;
wl_g=wl_o/sqrt(1-(wl_o/wl_c)^2);
disp(D,'Diameter of waveguide (in cm) =');
disp(wl_g,'Guide wavelength (in cm) =');
