//Ex:8.27
clc;
clear;
close;
c=3*10^8;// speed of light in m/s
n=3.6;// for GaAs
df=278*10^9;// separation in Hz
y=0.87*10^-6;// wavelength in m
L=c/(2*n*df);// cavity length in m
l=L*10^6;// cavity length in um
L1=floor(l)*10^-6;// cavity length in m
q=(2*n*L1)/y;// number of longitudinal modes
printf("The cavity length =%d um", l);
printf("\n The number of longitudinal modes =%d", q);