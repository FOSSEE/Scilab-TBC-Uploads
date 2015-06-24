clc
clear
//Input data
r=1.5//Refractive index of the material of a thin lens
f=-20//Focal length of the lens in cm
rx=-6//Ratio of radii of curvature of lens

//Calculations
r1=1/((1/f)/((r-1)*(1-(1/rx))))//Radius of curvature of convergent lens in cm
r2=(rx*r1)//Radius of curvature of divergent lens in cm

//Output
printf('Radii of curvature of lens are %3.2f cm and %i cm',r1,r2)
