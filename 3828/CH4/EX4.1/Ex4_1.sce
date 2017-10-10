//Chapter 4 : Laser and Holography

clear;

//Variable declaration
delE=3*1.6*10**-19      //Energy of laser
h=6.63*10**-34          //planck's constant
c=3*10**8               //speed of light

//Calculations
lamda=(h*c)/delE/10**-9

//Result
mprintf("Wavelength of radiation= %d nm",lamda)
