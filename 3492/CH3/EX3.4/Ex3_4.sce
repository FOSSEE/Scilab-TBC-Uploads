clc
//Chapter3
//Ex_4
//Given
theta=15.2 // in degree
d=0.234 // in nm
V=100 //in V
lambda=2*d*sind(theta) //Braggs condition
disp(lambda,"Wavelength of electron in nm is")
lambda=1.226/sqrt(V) //debroglie wavelength in nm
disp(lambda,"de Broglie Wavelength of electron in nm is")
disp("de Broglie Wavelength is in excellent agreement with that determined from Braggs condition")
