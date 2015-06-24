clc
//Chapter3
//Ex_15
//Given
Z=1
n1=2
n2=3
R_inf=1.0974*10^7 // in m^-1
//Let x=1/lambda
x=R_inf*Z^2*((1/n1^2)-(1/n2^2))
lambda=1/x
disp(lambda*10^10, "Wavelength of first spectral line in Angstroms is")
n1=2
n2=4
x=R_inf*Z^2*((1/n1^2)-(1/n2^2))
lambda=1/x
disp(lambda*10^10, "Wavelength of second spectral line in Angstroms is")
disp("These spectral lines correspond to H_alpha and H_beta lines of Hydrogen")
