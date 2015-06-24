clc
//will the telescope be able to observe the wiremesh
a=3 //aperture in cm
lambda=5.5*10^-5 //wavelength of light in cm
//limit of resolution of telescope is given by
theta=1.22*lambda/a
//alpha=spacing of wire-mesh/distance of objective from wire-mesh
alpha=0.2/(80*10^2)
disp("theta="+string(theta)+"radian")
disp("alpha="+string(alpha)+"radian")
disp("if alpha>theta then telescope will be able to observe the wire-mesh")
//value of alpha is given wrong in the book 2.25*10^-5 radian
