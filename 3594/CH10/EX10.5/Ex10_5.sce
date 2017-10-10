
clc
//given
t=25
phi=20*%pi/180
//let pitch be 1 
R=t/(2*%pi)//R=t*p/(2*%pi)
Larc=1.6//1.6*p
//AB=Larc*cos(phi)
AB=Larc*cos(phi)
Ra=(4.47+13.97)^(1/2)//by simplifying AB+2{(Ra^2-R^2*cos(phi)^2)-R*sin(phi)} and using p =1
Addendum=Ra-R
//writing p in place of p=1
printf("\nAddendum required = %.2fp",Addendum)
