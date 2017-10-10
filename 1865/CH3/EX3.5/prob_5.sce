
//Problem 5
//calculate the glancing angle for third order reflection
clear
clc
w=0.842*(10)^(-10)//wavelength in m
x=8.5833//glancing angle(in degrees) for the first order reflection
a=1,b=3//a=1 for 1st order b=3 for 3rd order reflection
d=(a*w)/(2*sind(x))//inerplanar spacing for first order reflection
y=asind((b*w)/(2*d))
printf('Glancing angle for the third order reflection = %.2f degrees',y)
