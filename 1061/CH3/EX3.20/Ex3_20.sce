//Ex:3.20
clc;
clear;
close;
a=25;// max radius in um
y=0.8;// operating wavelength in um
NA=0.343;// numerical aperture
v=(2*%pi*a*NA)/y;// v-number
M=v^2/2;//number of modes
printf("The v-number =%f", v);
printf("\n The number of modes =%f", M);