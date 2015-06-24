//Ex:3.24
clc;
clear;
close;
n1=1.5;// core refractive index
n2=1.47;// cladding refractive index
y1=0.87;// operating wavelength in um
y2=1.5;// operating wavelength in um
a=25;// max radius in um
NA=sqrt(n1^2-n2^2);// numerical aperture
v1=(2*%pi*a*NA)/y1;
v2=(2*%pi*a*NA)/y2;
al=2;// parabolic index profile for GRIN
M1=(al/(al+2))*(v1^2/2);// number of modes
M2=(al/(al+2))*(v2^2/2);// number of modes
printf("The number of modes at 870 nm =%f um", M1);
printf("\n The number of modes =%f um", M2);