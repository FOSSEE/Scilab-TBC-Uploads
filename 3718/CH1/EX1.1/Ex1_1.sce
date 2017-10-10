//Chapter 1: Structure and Bonding
//Problem: 1
clc;

//Declaration of Constant
c = 3 * 10 ** 10                 // Velocity of light,in cm/sec

//Declaration of Variable
w = 3500 * 10 ** -8    // Wavelength of radiation,in cm

// Solution
mprintf("v = c / w\n")  //v is Velocity, c is Speed of light ,w is the wavelength

v = c / w

mprintf(" The frequency of radiation is %.2e Hz",v)
