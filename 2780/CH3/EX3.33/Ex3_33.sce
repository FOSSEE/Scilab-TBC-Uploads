clc
//distance between the centres of  images of two stars
lambda=5500*10^-8         //wavelength of light in cm
f=4*10^2              //focal length of telescope objective in cm
a=0.01*10^2         //diameter in cm
X=1.22*lambda*f/a
disp("distance between the centres of images of two stars is X="+string(X)+"cm ")
