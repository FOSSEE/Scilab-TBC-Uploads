clc
clear
//Input data
lo=3200*10^-10//Threshold wavelength in m
h=6.625*10^-34//Plancks constant in J.s
c=3*10^8//Velocity of light in m/s
e=1.6*10^-19//Charge of electron in Columbs

//Calculations
W=((h*c)/(lo*e))//Work function of platinum in eV

//Output
printf('The photoelectric workfunction for platinum is %3.4f eV',W)
