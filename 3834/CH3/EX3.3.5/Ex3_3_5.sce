//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 7
//Scilab version- 6.0.0
//Example 3.3.5
clc;
clear;
//given

S0=0.097;//zero dispersion slope in ps/(nm^2.km)
lambda0=1343E-9; //zero dispersion wavelength in m
lambda=1300E-9;//operating wavelength in m

b=lambda0*lambda0*lambda0*lambda0;
c=lambda*lambda*lambda;
x=b/c;
e=lambda-x;
g=S0/4;
Dlambda=g*e*1E9;//Chromatic dispersion in ps/(nm.Km)
mprintf("\n Chromatic dispersion  =%.2f ps/(nm.Km)",Dlambda);
