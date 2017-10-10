//Chapter 1: Structure and Bonding
//Problem: 3
clc;

//Declaration of Constant
c = 3 * 10 ** 8                 // Speed of light,in m/sec

//Declaration of Variable
T = 2.4 * 10 ** -10             // Time period,in sec

// Solution
f = 1 / T                   // Frequency,per sec
lamda = c / f               // Wavelength,in m
v = 1 / lamda               // Wavenumber,per meter

mprintf("Frequency: %.2e /sec\n',f)
mprintf(" Wavelength: %.2e m\n",lamda)
mprintf(" Wave number: %.2e /m",v)
