//Chapter 2: Antenna Basics
//Example 2-10.1
clc;

//Variable Initialization
Z = 120*%pi                 //Intrinsic impedance of free space (ohm)

//Calculation
max_aper = Z/(320*%pi**2)   //Max. effective aperture (lambda squared)
direct = 4*%pi*max_aper     //Directivity (unitless)

//Result
mprintf("The Maximum effective aperture is %.3f lambda square",max_aper)
mprintf("\nThe Directivity is %.1f", direct)
