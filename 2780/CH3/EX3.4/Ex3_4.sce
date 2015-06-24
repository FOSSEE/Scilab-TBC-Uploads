clc
//to calculate wavelength of incident light
//direction of minima is given by e*sintheta=+m*lambda
//for first minima m=1,i.e. e*sintheta=lambda,sintheta is approximately equal to theta,then we can write it as e*theta=lambda ...........eq(1)
//theta=Y/d........................eq(2) 
e=0.02 //in cm
Y=0.5        //position of first minima from the central maxima in cm
d=200           //distance of screen from the slit in cm
//from eq(1) and eq(2),we get
lambda=e*Y/d
disp("wavelength of incident light is lambda="+string(lambda)+"cm")
