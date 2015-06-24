//Ex:10.9
clc;
clear;
close;
Br=20*10^6;// data rate in b/s
c=3*10^8;// speed of light in m/s
y=86*10^-9;// wavelength in m
dy=30*10^-9;// spectral width in m
X=0.024;
Tb=1/Br;
Lmax=(0.35*Tb*c*y)/(dy*X);// material dispersion limited transmission distance for RZ coding in m
printf("The material dispersion limited transmission distance =%d m", Lmax);