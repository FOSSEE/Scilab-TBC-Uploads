clc
clear
//Input data
n=1//Order of diffraction
w=[5890,5896]//Wavelengths of the two sodium lines in angstroms

//Calculations
N=(w(1)*10^-10)/((w(2)-w(1))*10^-10*n)//Minimum number of lines in a grating which will just resolve in the first order

//Output
printf('Minimum number of lines in a grating which will just resolve in the first order is %3.0f',N)
