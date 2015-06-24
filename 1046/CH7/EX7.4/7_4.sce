//Example 7.4
//Determine the surface temp of blackbody and 
//wavelength of maximum emission.
//Find the range of the spectrum in which the wavelength falls

//Variables declaration
Eb=4000           //W/m sq, Total emmisive power
s=5.669*10^-8  //Stephen boltzman constant

//Calculation
T=(Eb/s)^0.25  //k, surface temp. of black body
ym=2898/T      //micro meter,
//By weins law : Max. wavelength of emmision is inversaly proportional 
//to temprature. and constant is 2898 micrometer.

//Result
printf("Surface temp. is %f C",T)
printf("wavength is  %f micrometer ",ym)
printf(" from fig 7.1 it  falls in the infrared region of spectrum.")
