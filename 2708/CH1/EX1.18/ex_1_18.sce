//Example 1.18 // wavvelength of light
clc;
//given data :
b=.5D-2;//distace between succesive fringes in m
u=1.4;//refractive index of cellophane
a=10;//angle of wedge in sec
a=a*%pi/(60*60*180);//to convert in radian
w=2*u*a*b;
w=w*1D10;//to convert in A
disp(w,"wavelength of light used in A")

//note: Pi is taken as 22/7 in the textbook.
