clc
//to calculate numerical aperture of the objective
lambda=5.461*10^-5 //wavelength in cm
S=5.55*10^-5 //distance in cm
NA=1.22*lambda/(2*S)
disp("the numerical aperture of the objective is NA="+string(NA)+"unitless")
