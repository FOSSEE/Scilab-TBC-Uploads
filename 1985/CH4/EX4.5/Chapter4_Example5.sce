clc
clear
//Input data
N=(5.9*10^5)//Number of lines drawn on the grating in lines/m
n=2//Order of diffraction
l=(6000*10^-10)//Wavelength of light used in m

//Calculations
q=asind(N*n*l)//Angle of diffraction in degrees
cosq=cosd(q)//Cosine of angle of diffraction
P=((n*N)/cosq)/10^6//Dispersive power* 10^6

//Output
printf('The dispersive power of the grating in the second order is %3.2f *10^6',P )
