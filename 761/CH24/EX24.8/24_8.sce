clc;
// page no 901
// prob no 24.8
wl=1*10^-6;
c= 3*10^8;
h=6.626*10^-34
f=c/wl;
E=h*f;// in Joule
//this energy can be converted into electron-volt. we know 1eV=1.6*10^-19 J
eV=1.6*10^-19 ;
E_ev=E/eV;
disp('eV',E_ev,'The energy of photon in eV is');