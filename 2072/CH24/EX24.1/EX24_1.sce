//Chapter 24
clc
//Example 1
//given
L=1.2 // Seperation between screen and double-slit in meter
d=3*10^-5 //distance between the two slits
m=2 //second order bright fringe
Y=4.5*10^-2 //distance of second order bright fringe from centerline
//wavelength of light
lambda=(Y*d)/(m*L)
disp(lambda,"(A)  wavelength of light in meters")
//distance between adjacent bright fringes
//delta_Y=Y(m+1)-Ym
delta_Y=lambda*L/d
disp(delta_Y,"(B)  Distance between adjacent fringes in meters")


