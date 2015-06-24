// Example 6.12;//Cavity length and longitudinal modes
clc;
close;
clear;
h=0.87*10^-6;//Wavelength in meter
n=3.6;//refractive index
df=278;//frequency sepration in Gega Hertz
C=3*10^8;//Speed of light in m/s
L=(C/(2*n*df*10^9))*10^4;//Length of cavity in cm 
q=(2*n*L*10^-2)/(h);//Number of logitudinal modes
disp(L,"Length of cavity in cm")
disp(q,"Number of longitudinal modes are ")
