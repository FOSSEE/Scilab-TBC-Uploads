clc;
//page no 524
//prob no. 14.2.1
// A rectangular waveguide has a broad wall dimension as a=0.900 in. Therefore
a=2.286;//in cm
wl_c=2*a*10^-2;//in m
c=3*10^8;
wl=c/10^10;//in m
if(wl_c >wl)
    disp('i)TE10 wave will propogate');
else
    disp('i)TE10 wave will not propogate');
end
//determination of gide wl
wl_g=wl/(sqrt(1-(wl/wl_c)^2));
disp('cm',wl_g*10^2,'Guide wavelength is');
//determination of phase velocity
vp=c*wl_g/wl;
disp('m/s',vp,'Phase velocity is');
//determination of group velocity
vg=c*wl/wl_g;
disp('m/s',vg,'Group velocity is');