//Ex:3.15
clc;
clear;
close;
n1=1.49;// core refractive index
n2=1.47;// cladding refractive index
a=2;// radius in um
dl=(n1-n2)/n1;// index difference
v_c=2.405;
y_c=(2*3.14*a*n1*(2*dl)^(0.5))/v_c;// cut off wavelength in um
Y=1.31;// wavelength in um
A=(v_c*Y)/(2*3.14*n1*(2*dl)^(0.5));// min core radius in um
printf("The cut off wavelength =%f um", y_c);
printf("\n The min core radius =%f um", A);