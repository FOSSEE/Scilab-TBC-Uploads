//Ex:3.25
clc;
clear;
close;
n1=1.5;// core refractive index
n2=1.46;// cladding refractive index
v=2.4;// cut off parameter
y=0.85;// operating wavelength in um
NA=sqrt(n1^2-n2^2);// numerical aperture
a=(v*y)/(2*3.14*NA);// max radius in um
w=v*a;// spot size
x=(2*y)/(3.4*w);// divergence angle in degree
d=50;// distance in meter
w_s=(y*d)/(%pi*w);// spot size at 50 meter
printf("The numerical aperture =%f um", NA);
printf("\n The max core radius =%f um", a);
printf("\n The spot size =%f um", w);
printf("\n The divergence angle =%f degree", x);
printf("\n The spot size at 50 meter =%f m", w_s);