clc
clear
//Input data
r=1//Refractive index
n=4//Number of bands
w=6500//Wavelength in Angstrom

//Calculations
t=(((n+(1/2))*w*10^-8)/(2*r))/10^-4//Thickness of wedge shaped air film in cm *10^-4

//Output
printf('Thickness of wedge shaped air film is %3.4f *10^-4 cm',t)
