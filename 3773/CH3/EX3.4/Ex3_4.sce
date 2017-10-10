//Chapter 3: The Antenna Family
//Example 3-11.1
clc;

//Variable Initialization
n = 4               //Number of patch antennas (lambda)
diameter = 0.5      //Diameter of patch antennas (lambda)

//Calculation
A_e = n*diameter            //Effective aperture (lambda^2)
D = (4*%pi*A_e)         //Directivity (unitless)
D_dbi = 10*log10(D)    //Directivity (dBi)
ohm_a = (4*%pi)/D       //Beam area (steradians)

//Result
mprintf("The directivity is %d or %d dBi",D,D_dbi)
mprintf("\nThe beam area is %.1f sr", ohm_a)
