clc;
// page no 294
// prob no 7.6
// In the given problem, input to a mu-law compresser is +ve,
// with its voltage one-half the max value
u=255;
Vi=1;//maximum input value is considered as unity volts
vi=0.5;
V0=1;//consider maximum output voltage as unity volts
vo=V0* log(1+u*vi/Vi)/log(1+u);
disp('volts',vo,'The maximum output voltage produced is');