clc
clear
//Input data
d1=6000//Diffraction grating have number of lines per cm
q=50//Diffracted second order spectral line observed in degrees
n=2//Second order

//Calculations
w=(sind(q)/(d1*n))*10^8//Wavelength of radiation in Angstrom

//Output
printf('Wavelength of radiation is %3.1f Angstrom',w)
