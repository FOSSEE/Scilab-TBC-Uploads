//fiber optic communications by joseph c. palais
//example 2.5
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
n1=1//refractive index of air
d=1e-2//daimeter of circular photodetector in m
f=10e-2//lense focal length in m
//to find
theta=asind(d/(2*f))//acceptance angle in degrees
mprintf("Acceptance angle=%fdegree",theta)
NA=n1*(sind(theta))//numerical aperture
mprintf("\nNumerical Aperture=%f",NA)
FCA=2*theta//full cone angle
mprintf("\nFull cone angle=%fdegree",FCA)                                               
