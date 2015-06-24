clc
//to calculate the difference of square of diameters for nth and (n+p)th ring when light of wavelength lambda is changed to lambda'
lambda=6*10^-5 //wavelength in cm
lambda1=4.5*10^-5 //wavelength in cm
//Let D=(D^2-Dn^2)=0.125 cm^2 
D=0.125
//formula is D'(n+p)^2-D'n^2=lambda'*(D(n+p)^2-Dn^2)/lambda
disp("the difference of square of diameters is D1(n+p)^2-D1n^2=(lambda1*D)/lambda="+string((lambda1*D)/lambda)+"cm^2")
//to calculate difference of square of diamaters when liqquid of refractive index mu' is introduced
mu=1 //refractive index (unitless)
mu1=1.33 // mu'=1.33
//formula is D'(n+p)^2-D'n^2=(mu/mu')*(D(n+p)^2-Dn^2)
disp("the difference of square of diameters is D1(n+p)^2-D1n^2=(mu*D)/mu1="+string((mu*D)/mu1)+"cm^2")
//to calculate difference of square of diameters when radius of curvature of convex surface of the plano convex lens is doubled
R1=2 //radius of curvature is R'=2R
R=1
//formula is D'(n+p)^2-D'n^2=(R'/R)*(D(n+p)^2-Dn^2)
disp("the difference of square of diameters is D1(n+p)^2-D1n^2=(R1*D)/R="+string((R1*D)/R)+"cm^2")
