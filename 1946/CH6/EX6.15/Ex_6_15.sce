// Example 6.15;//Cavity length and longitudinal modes
clc;
close;
clear;
h=0.87*10^-6;//Wavelength in meter
n=3.6;//refractive index
df=278;//frequency sepration in Gega Hertz
C=3*10^8;//Speed of light in m/s
L=round((C/(2*n*df*10^9))*10^6);//Length of cavity in micro meter 
q=round(((2*n*L*10^-2)/(h))*10^-4);//Number of logitudinal modes
disp(L,"Length of cavity in micro meter")
disp(q,"Number of longitudinal modes are ")
