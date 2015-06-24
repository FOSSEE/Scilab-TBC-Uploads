clc
//to calculate wavelength
n=2 //order of spectrum
theta=%pi/6 //in radians
E=1/5000 //let (e+d)=E
lambda=E*sin(%pi/6)/n
disp("the wavelength of the spectral line is lambda="+string(lambda)+"cm")
