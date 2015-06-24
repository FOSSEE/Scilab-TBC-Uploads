//Ex:8.29
clc;
clear;
close;
c=3*10^8;// speed of light in m/s
n=3.7;// for GaAs
L=500*10^-6;// cavity length in m
y=850*10^-9;//
df=c/(2*n*L);//frequency separation in Hz
df1=df/10^9;// frequency separation in GHz
dy=(y*y)/(2*L*n);// wavelength in m
dy1=dy*10^9;// wavelength in nm
printf("The frequency separation =%d GHz", df1);
printf("\n The wavelength separation =%f nm", dy1);