clc
clear

//INPUT
r=8.3*10^7;//universal gas constant in ergs/deg.C
a=1.36*10^6*76*13.6*981;//vanderwaal constant in atm.(suv^2)/(gm^2)
b=32;//vanderwaal constant in cc
cp=7.03;//specific heat at constant pressure in cal
j=4.18*10^7;//joules constant in ergs/cal
t=273;//temperature of the gas in K

//CALCULATIONS
dt=((2*a/(r*t))-b)*10^6/(cp*j);//change of temperature in atmosphere drop of pressure in deg/atm/cm^3

//OUTPUT
mprintf('the change of temperature in atmosphere drop of pressure is %3.2f deg/atm/cm^3',dt)
