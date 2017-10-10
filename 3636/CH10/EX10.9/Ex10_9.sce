clc;
clear;
Eg=1.43 //Energy band gap in eV
h=4.14*10^-15 //planck's constant in eV/s
c=3*10^8 //in m/s

//Calculation
lamda=(h*c)/Eg

format("v",8)
disp(lamda,"Wavelength (m)= ") //The answers vary due to round off error
