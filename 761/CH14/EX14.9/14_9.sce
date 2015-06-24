clc;
// page no 545
// prob no 14.9
Zo=50;// line impedence in ohm
ZL=100;// load impedance in ohm
vf=0.8;//velocity factor
l=1;//length of line
f=30*10^6;// freq of operation
c=3*10^8;//velo of light
// we have to find the length of line in degree
wl=vf*c/f//wavelength
// Then the length of line in degree is
ang=l/wl*360
// calculation of impedance
Z=Zo*(ZL+(%i*Zo*tand(ang)))/(Zo+(%i*ZL*tand(ang)));
disp('ohm',Z,'The impedance looking toward the load');