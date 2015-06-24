//Ex:2.7
clc;
clear;
close;
n2=1.59;// cladding refractive index
n_a=0.2;// numerical aperture
n1=sqrt(n2^2+n_a^2);// core refractive index
n_1=1.60;// core refractive index
n_o=1.33;
A=(sqrt(n_1^2-n2^2))/n_o;
x_a=(asin(A))*180/%pi;// acceptance angle in degree
x_c=(asin(n2/n1))*180/%pi;// critical angle in degree
y=1300*10^(-9);// in meter
a=25*10^(-6);// in meter
v=(2*%pi*a*n_a)/y;
V=floor(v);
M=V^2/2;// number of modes transmitted
printf("acceptance angle in degree = %f degree",x_a);
printf("\n critical angle in degree = %f degree",x_c);
printf("\n number of modes transmitted = %d",M);