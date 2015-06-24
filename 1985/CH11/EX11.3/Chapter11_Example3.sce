
clc
clear
//Input data
d=5.6534*10^-10//Interplanar spacing in m
q1=13.666//Glacing angle in degrees
n1=1//Order of diffraction
n2=2//Order of diffraction

//Calculations
l=((2*d*sind(q1))/n1)/10^-10//Wavelength in m*10^-10
q2=asind((n2*l*10^-10)/(2*d))//Angle for the second order in degrees
qzx=(q2-(int(q2)))*60//For output
qzy=(qzx-(int(qzx)))*60//For output

//Output
printf('(a) The wavelength of the X-rays is %3.3f*10^-10 m \n (b) The angle for the second order Bragg reflection is %3.0f degrees %3.0f minutes %3.2f seconds',l,q2,qzx,qzy)
