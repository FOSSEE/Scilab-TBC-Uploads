clc
//to calculate wavelength
d=1.87*10^-10 //spacing in angstrom
n=2 
//formula is lambda=2*d*sintheta/n
lambda=2*d*sin(%pi/6)/n
disp("the waelength of X-rays is lambda="+string(lambda)+"m")
