//Chapter 4 : Laser and Holography

clear;

//Variable declaration
lamda=6328*10**-10      //wavelength
h=6.63*10**-34          //planck's constant
c=3*10**8               //speed of light

//Calculations
E=((h*c)/lamda)/1.6*10**19
Momentum=h/lamda/10**-27

//Result
mprintf("Energy of radiation= %f eV",E)
mprintf("\nMomentum of electron= %f*10**-27 kgm/s",Momentum)

