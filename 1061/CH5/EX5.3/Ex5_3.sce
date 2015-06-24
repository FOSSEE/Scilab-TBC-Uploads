//Ex:5.3
clc;
clear;
close;
n1=1.465;// core refractive index
n2=1.45;// cladding refractive index
c=3*10^8;// the speed of light in m/s
NA=sqrt(n1^2-n2^2);// numerical aperture
Mp=(NA^2)/(2*n1*c);// multipath pulse broadening in ns/km
bl=(1/NA^2)*(2*n1*c);// bandwidth length product in GHz km
printf("The numerical aperture =%f", NA);
printf("\n The multipath pulse broadening =%f ns/km", Mp*10^9);
printf("\n The bandwidth length product =%d GHz km", bl/10^9);