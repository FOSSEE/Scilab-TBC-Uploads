clc
//Chapter4
//Ex_6
//Given
e=1.6*10^-19 // in coulombs
Eg=1.1 //in eV
Eg=Eg*e // in Joules
h=6.6*10^-34 //in Js
c=3*10^8 // in m/s
lambda=h*c/Eg
disp(lambda*10^6,"Wavelength of light that can be absorbed by an Si photodetector at Eg=1.1 eV in micro meter is")
disp("Hence the light of wavelength 1.31 micro meter and 1.55 micro meter will not be absorbed by Si and thus cannot be detected by detector")
