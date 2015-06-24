//Caption:Show TE01 mode propagates under given conditions
//Exa:4.18
clc;
clear;
close;
a=1.5;//in cm
b=1;//in cm
e_r=4;//dielectric
c=3*10^10;//in cm/s
wl_c=2*b;
f_c=c/wl_c;
f_imp=6*10^9;//impressed frequency (in Hz)
wl_air=c/f_imp;
//Inserting dielectric:
wl_dielec=wl_air/sqrt(e_r);
if(wl_dielec>wl_c)
    disp('    TE01 can propagate');
else
    disp('    TE01 cannot propagate');
end