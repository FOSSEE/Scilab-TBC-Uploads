clc
clear
//Input data
w=[5000,5100]//Wavelengths of light in Armstrongs
N=6000//Number of lines drawn on the grating per cm
n=1//Order of diffraction
F=1//Focal length of the lens in m

//Calculations
q1=asind(N*100*n*w(1)*10^-10)//Angle of diffraction for D1 line in degrees
q2=asind(N*100*n*w(2)*10^-10)//Angle of diffraction for D1 line in degrees
x=F*(tand(q2)-tand(q1))*1000//Seperation of the two lines in mm

//Output
printf('Seperation of two lines in the first order spectrum is %3.1f mm',x)

