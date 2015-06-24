clc
clear
//Input data
r=1.39//Refractive index of the film 
q=30//Angle observed in degrees
w=[5125,5000]//Wavelengths of two consecutive dark bands in Angstrom

//Calculations
r1=asind(sind(q)/r)//Angle of reflection in degrees
n=w(2)/(w(1)-w(2))//Constant value
t=((n*w(1)*10^-8)/(2*r*cosd(r1)))/10^-4//Thickness of the film in cm *10^-4

//Output
printf('Thickness of the film is %3.4f *10^-4 cm',t)
