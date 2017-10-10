//Initialisation of variables
clc
m=9.11e-28
e=4.803e-10
h=6.62e-27
V=100/300//e.s.u
//.5*m*v^2=V*e
v=sqrt(2*V*e/m)
l=h/(m*v)
printf('wavelength associated is %e cms \n',l)

