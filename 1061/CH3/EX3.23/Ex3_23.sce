//Ex:3.23
clc;
clear;
close;
n1=1.46;// core refractive index
a=4.5;// core radius in um
dl=0.0025;// relative index difference
NA=n1*(sqrt(2*dl));// numerical aperture
v=2.405;
y=(2*%pi*a*NA)/(v);// cut off wavelength in um
printf("The cut off wavelength =%f um", y);