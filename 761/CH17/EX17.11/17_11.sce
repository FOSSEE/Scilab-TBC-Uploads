clc;
//page no 654
// problem no 17.11
//for a square patch antenna
f=2*10^6;// freq of operation in Hz
Er=2;// relative permittivity
c=3*10^8;// velo of light
//wavelength is given as
wl=c/(f*sqrt(Er));
//The antenna width and length are each approximately half of this.
w=wl/2;
l=wl/2;
disp('m',w,'The antenna width','and','m',l,'The antenna length');