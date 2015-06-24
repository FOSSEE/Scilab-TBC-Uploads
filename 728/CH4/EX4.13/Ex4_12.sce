//Caption:Calculate (i)-cutoff wavelength,(ii)-cutoff frequency,(iii)-wavelength in guide
//Exa:4.12
clc;
clear;
close;
c=3*10^10;//in cm/s
d=4;//in cm
r=d/2;//in cm
wl_c=2*%pi*r/1.841;//in cm
f_c=c/wl_c;
f_signal=5*10^9;//in Hz
wl_o=c/f_signal;
wl_g=wl_o/sqrt(1-(wl_o/wl_c)^2);
disp(wl_c,'Cut-off wavelength (in cm) =');
disp(f_c,'Cut-off frequency (in Hz) =');
disp(wl_g,'Guide wavelength (in cm) =');