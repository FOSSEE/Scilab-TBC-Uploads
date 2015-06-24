//Caption:Calculate the cutoff wavelength, guide wavelength, group & phase velocities
//Exa:4.8
clc;
clear;
close;
a=10;//in cm
c=3*10^10;//in cm/s
wl_c=2*a;//in cm
f=2.5*10^9;//in Hz
wl_o=c/f;
wl_g=wl_o/(sqrt(1-(wl_o/wl_c)^2));//in cm
V_p=c/(sqrt(1-(wl_o/wl_c)^2));
V_g=c^2/V_p;
disp(wl_c,'Cut-off wavelength (in cm) =');
disp(wl_g,'Guide wavelength (in cm) =');
disp(V_p,'Phase velocity (in cm/s) =');
disp(V_g,'Group velocity (in cm/s) =');