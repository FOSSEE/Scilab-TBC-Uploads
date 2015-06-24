clc
clear
//Input data
n=181*10^-6//Coefficient of viscosity of a gas in p
v=3*10^4//Average speed of molecules in cm/s
d=1.2929*10^-3//Density in g/cm^3

//Calculations
lemda=((3*n)/(d*v))/10^-6//Mean free path in cm*10^-6

//Output
printf('Mean free path is %3.0f * 10^-6 cm',lemda)
