clc
clear
//Input data
w1=2//Wavelength in Angstrom 
Z1=24//Target one
Z2=42//Target two
a=1//Constant value

//Calculations
w2=w1*((Z1-a)/(Z2-a))^2//Wavelength in Angstrom

//Output
printf('Wavelength is %3.2f Angstrom',w2)
