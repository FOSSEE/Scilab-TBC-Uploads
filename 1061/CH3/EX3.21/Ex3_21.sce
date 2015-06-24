//Ex:3.21
clc;
clear;
close;
n1=1.5;// core refractive index
NA=0.38;// numerical aperture
v=75;// v-number
y=1.3;// operating wavelength in um
a=(v*y)/(2*%pi*NA);// core radius in um
n2=sqrt(n1^2-NA^2);// cladding refractive index
printf("The core radius =%f um", a);
printf("\n The cladding refractive index =%f", n2);
printf("\n answer in textbook is wrong");