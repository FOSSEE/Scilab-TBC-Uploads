//Chapter 25
clc
//Example 6
//given
l=589*10^-9 //Wavelength of sodium light m
d=90*10^-2 //diameter of the aperture in m 
L=400*10^-9 //Wavelength of desirable Visble light
n=1.33 //refractive index of water
//a) Calculation of limiting angle of resolution
//Limiting angle of resolution of the circular aperture is Theta_min=1.22*(l/d)
Theta_min1=1.22*(l/d)
disp(Theta_min1,"a) Limiting angle of resolution in radians is")
//b) Calculation of maximum limit of resolution for the microscope
Theta_min2=1.22*(L/d)
disp(Theta_min2," b) Maximum limit of resolution for the microscope in radians")
//c)Effect of water b/w the object and objective on resolving power of microscope
lw=l/n
Theta_min3=1.22*(lw/d)
disp(Theta_min3,"c) Limiting angle of resolution for the microscope when water filled the space b/w the object and objective in radians is")


