//Ex:3.17
clc;
clear;
close;
n1=1.46;// core refractive index
a=4.5;// radius in um
dl=0.0025;// relative index difference
v_c=2.405;
y_c=(2*3.14*a*n1*(2*dl)^(0.5))/v_c;// cut off wavelength in um
printf("The cut off wavelength =%f um", y_c);