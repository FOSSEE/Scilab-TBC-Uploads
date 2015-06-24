clc
//to calculate wavelength of light
//in a diffraction pattern due to single slit, minima is given by e*sintheta=m*lambda
//since theta is very small, sintheta is approximately equal to theta
//theta=Y/d
e=0.014 //width of slit in cm
d=200 //distance in cm
m=2 
Y=1.6 //in cm
lambda=Y*e/(d*m)
disp("wavelength of light is lambda="+string(lambda)+"cm")
