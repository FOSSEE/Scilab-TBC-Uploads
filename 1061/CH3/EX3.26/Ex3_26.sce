//Ex:3.26
clc;
clear;
close;
n1=1.53;// core refractive index
n2=1.50;// cladding  refractive index
y=1.2;// wavelength in um
v=2.405;
a=(v*y)/(2*3.14*(sqrt(n1^2-n2^2)));// core radius in micrometer
printf("The max diameter=%f um",2*a);