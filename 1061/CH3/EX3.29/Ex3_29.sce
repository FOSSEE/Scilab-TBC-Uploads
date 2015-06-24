//Ex:3.29
clc;
clear;
close;
n1=1.50;// core refractive index
a=25;// core radius in um
y=1.5;// wavelength in um
v=2.405;
NA=(v*y)/(2*3.14*a);// numerical aperture
D=(NA/n1)^2/(2);// max value of D
n2=n1-(D*n1);// cladding refractive index
printf("The max value of D =%f",D);
printf("\n The cladding refractive index =%f",n2);