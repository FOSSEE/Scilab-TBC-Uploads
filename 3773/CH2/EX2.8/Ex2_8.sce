//Chapter 2: Antenna Basics
//Example 2-10.2
clc;

//Variable Initialization
R_r = 73                            //Radiation resistance (ohm)

//Calculation
eff_aper = 30/(R_r*%pi)         //Effective aperture (lambda squared)
directivity = 4*%pi*eff_aper    //Directivity (unitless)

//Result
mprintf("The effective aperture is %.2f lambda square",eff_aper)
mprintf("\nThe directivity is %.2f",directivity)
