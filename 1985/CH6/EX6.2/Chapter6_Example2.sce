clc
clear
//Input data
r=[0.1,0.4]//Radii of curvature in m
u=[1.5230,1.5145]//Refractive indices of the lens for violet and red light respectively

//Calculations
fr=1/((u(2)-1)*((1/r(1))-(1/r(2))))//Focal length of the lens for red light in m
fv=1/((u(1)-1)*((1/r(1))-(1/r(2))))//Focal length of the lens for violet light in m
f=fr-fv//Longitudinal chromatic aberration in m

//Output
printf('Longitudinal chromatic aberration for an object at infinity is %3.4f m',f)
