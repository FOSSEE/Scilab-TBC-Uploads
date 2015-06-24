clc
clear
//Input data
t=0.2//Thickness of film in micro m
r=1.25//Refractive index of liquid
w=[4000,5000]//Range of wavelength in Angstrom
q=35//Angle observed in degrees

//Calculations
u=asind(sind(q)/r)//Angle of reflection in degrees
w1=(2*t*10^-6*r*cosd(u))/10^-10//Wavelength in Angstrom
w2=w1/2//Wavelength in Angstrom

//Output
printf('Wavelength absent in reflected light is %i Angstrom',w2)
