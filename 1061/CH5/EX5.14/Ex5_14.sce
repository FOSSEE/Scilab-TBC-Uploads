//Ex:5.14
clc;
clear;
close;
n1=1.46;// core refractive index
NA=0.25;// numerical aperture
c=3*10^5;// the speed of light km/s
L=7;// length in km
si=NA^2/(4*sqrt(3)*n1*c);//intermodel pulse broadening ns/km
st=si*L;//total intermodel pulse broadening
BW=0.187/st;// bandwidth in MHz
printf("The intermodel pulse broadening =%f ns/km", st*10^9);
printf("\n The bandwidth =%f MHz", BW/10^6);