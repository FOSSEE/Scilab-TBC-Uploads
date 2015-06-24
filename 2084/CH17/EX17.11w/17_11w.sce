//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.11w
//calculation of the distance between the two first order minima

//given data
b=.40*10^-3//width(in m) of the slit
D=40*10^-2//separation(in m) between the slit and the screen
lambda=546*10^-9//wavelength(in m) of the light used

//calculation
//linear distances from the central maxima are given by..x = D*tan(theta) = D*sin(theta) = +-lambda*D/b
sep=2*lambda*D/b//separation between the minima

printf('the distance between the two first order minima is %3.1f mm',sep*10^3)
