clc;
clear;
m=9.1*10^-31 //mass in kg
h=6.63*10^-34 //Plancks constant in J-s
e=1.6*10^-19 //charge in C
lambda=0.1 //wavelength in nm

//calculation
V=(((h/(sqrt(2*m*e)))*10^9)/(lambda))^2 //multipyling by 10^9 to convert from m to nm according to textbook convention.

mprintf("The voltage to which electron can be accelerated is = %.4e volts or 150.95 volts",V)
//The answer varies due to round off error.
