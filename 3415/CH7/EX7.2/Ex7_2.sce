//fiber optic communications by joseph c. palais
//example 7.2
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
eta=0.01//quantum efficiency of a detector
lambda=0.8*(10^-6)//wavelength in m
e=1.6*10^-19//charge of an electron in columb
h=6.63*10^-34//plancks constant
c=3*10^8//velocity of light in m/s
// to find
Row=(eta*e*lambda)/(h*c)//responsivity of detector in mA/W
mprintf("Responsivity of detector=%f mA/W",Row*10^3)//multiplication with 10^3 converts the unit from A/W to mA/W
