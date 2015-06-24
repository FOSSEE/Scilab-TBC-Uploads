clc
clear
//Input data
d1=6000//Diffraction grating have number of lines per cm
w=6000//Wavelength in Angstrom

//Calculations
n=(1/(d1*w*10^-8))//Maxmum order of diffraction

//Output
printf('Maximum order of diffraction that can be observed is %i',n)
