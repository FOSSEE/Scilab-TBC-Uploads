// Example 6.3;//number of longitudinal modes and frequency spacing
clc;
clear;
close;
h=0.55*10^-6;//Wavelength in meter
n=1.78;//refractive index
L=4*10^-2;//LENGTH IN METER
C=3*10^8;//Speed of light in m/s
q=(2*n*L)/(h);//Number of logitudinal modes
df=((C)/(2*n*L))*10^-9;//frequency sepration in Gega Hertz
disp(df,"frequency spacing in Gega Hertz is ")
disp(q,"Number of longitudinal modes are ")
