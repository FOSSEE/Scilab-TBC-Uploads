//Ex:3.19
clc;
clear;
close;
n1=1.53;// core refractive index
n2=1.5;// cladding refractive index
y=1.5;// operating wavelength in um
NA=sqrt(n1^2-n2^2);// numerical aperture
a=(2.405*y)/(2*3.14*NA);// max radius in um
printf("The max core radius =%f um", a);