
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
ri=95.0;//radial distance in mm
f=152.4;//focal length in mm
t=3*pi/180;//tilt
l=50*pi/180;//angle
//calculation
dt=ri**2*sin(t)*cos(l)**2/(f-ri*sin(t)*cos(l));
disp(dt,"tilt displacement of the image in mm")
clear()
