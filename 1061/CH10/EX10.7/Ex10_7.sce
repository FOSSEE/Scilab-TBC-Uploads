//Ex:10.7
clc;
clear;
close;
y=860*10^-9;// wavelength in m
L=5000;// length in m
X=0.024;
dy=20*10^-9;// spectral width in m
dts=6*10^-9;// silica optical link rise time in s
dtr=8*10^-9;// detector rise in s
c=3*10^8;// speed of light in m/s
dtm=-(L*dy*X)/(c*y);// material dispersion delay time in s
id=2.5*10^-12;// intermodel dispersion in s/m
dti=id*L;// intermodel dispersion delay time
dtsy=sqrt((dts^2)+(dtr^2)+(dtm^2)+(dti^2));// system rise time in s
Br_max=0.7/dtsy;// max bit rate for NRZ coding in bit/s
Br_max1=0.35/dtsy;// max bit rate for RZ coding in bit/s
printf("The system rise time =%f ns", dtsy*10^9);
printf("\n The max bit rate for NRZ coding =%f Mbit/s", Br_max/10^6);
printf("\n The max bit rate for RZ coding =%f Mbit/s", Br_max1/10^6);