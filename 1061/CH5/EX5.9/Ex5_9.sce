//Ex:5.9
clc;
clear;
close;
n1=1.5;// core refractive index
c=3*10^8;// the speed of light m/s
w=6*10^-6;// rms spectral width in m
M=200;// material dispersion parameter in ps/nm/km
NA=0.25;// numerical aperture
w=50;// spectral width in nm
L=1;// length in m
rm=w*L*M;// rms pulse broadening in s/km
rM=rm/10^3;// rms pulse broadening in ns/km due to material dispersion
rm1=(L*1000*(NA)^2)/(4*sqrt(3)*n1*c);//rms pulse broadening in ns/km due to material dispersion in sec/m
rM1=rm1*10^9;// rms pulse broadening in ns/km due to intermodel dispersion in ns/km
rmt=sqrt(rM^2+rM1^2);// total rms pulse broadening in ns/km
bl=0.2/(rmt*10^-9);// bandwidth length product in Hz km
bL=bl/10^6;// bandwidth length product in MHz km
printf("The total rms pulse broadening =%f ns/km",rmt);
printf("\n The bandwidth length product =%f MHz km",bL);