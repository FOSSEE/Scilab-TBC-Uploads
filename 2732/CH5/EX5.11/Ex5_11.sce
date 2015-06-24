clc
//initialization of variables
clear
T1=37.8 // degre C
t=0.355 //mm
T2=93.3 // degree C
L=2 //cm
m=1
n=1.53
a=1.86*10^-5
//calculations
R=2*t*(3*(1+m)^2+(1+m*n)*(m^2+(m*n)^-1))
R=R/(6*a*(T2-T1)*(1+m^2))  // mm
R=R/10
def=L^2/(8*R)
// results
printf('The radius of curvature is %.1f cm',R)
printf('\n The deflection is %.6f cm',def)
