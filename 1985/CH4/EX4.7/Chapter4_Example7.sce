clc
clear
//Input data
N=5000//Number of lines drawn on the grating per m
w=(5890*10^-10)//Wavelength of the light used in m

//Calculations
n=(1/(w*N*100))//Order of spectrum
x=ceil(n)//Rounding off to next integer

//Output
printf('Since n < %i, it is not possible to observe the fourth or higher order of diffraction',x)
