clc
clear

//INPUT
a=0.245*10^6*10^6;//vanderwaal constant in cm^4.dyne/mole^2
b=2.67*10;//vanderwaal constant in cc/mole
r=2*4.2*10^7;//universal gas constant in ergs/mole.K

//CALCULATIONS
ti=2*a/(b*r);//inversion temperature in K

//OUTPUT
mprintf('inversion temperature of hydrogen is %3.2f K',ti)
