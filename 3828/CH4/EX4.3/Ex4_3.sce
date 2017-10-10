//Chapter 4 : Laser and Holography

clear;

//Variable declaration
lamda=6730*10**-18      //wavelength
h=6.63*10**-34          //planck's constant
c=3*10**8               //speed of light
P=10**-3                //Power of laser

//Calculations
n=(P*lamda)/(h*c)/10**5

//Result
mprintf("Wavelength of radiation= %d*10**15 photons/sec",n)
