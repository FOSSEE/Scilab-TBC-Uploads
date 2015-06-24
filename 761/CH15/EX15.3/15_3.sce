clc;
//page no 520
//prob no. 15.3
//An isotropic radiator with power 100W & dist given is 10km
Pt=100;r=10*10^3;
//Determination of power density at r=10km
Pd=Pt/(4*%pi*(r^2));
disp('nW/m2',Pd*10^9,'Power density at a point 10km');