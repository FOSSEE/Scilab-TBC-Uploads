//Chapter 8: Helical Antennas
//Example 8-5.3
clc;

//Variable Initialization
n = 10.0    //Number of turns (unitless)
S = 0.236   //Spacing between turns (lambda)
n_a = 4.0   //Number of helical antennas in the array (unitless)

//Calculation
D = 12*n*S  //Directivity of a single antenna(unitless)
Ae = D/(4*%pi)   //Effective aperture (lambda^2)

A = sqrt(Ae)    //Area of square/spacing between helixes (lambda)
Ae_total = Ae*n_a   //Total effective aperture (lambda^2)
D_array = (4*%pi*Ae_total)   //Directivity of the array (unitless)
D_array_db = 10*log10(D_array)  //Directivity of the array (dBi)

//Result
mprintf("The best spacing between the helixes is %.1f lambda",A)
mprintf("\nThe directivity of the array is %d or %.1f dBi",D_array,D_array_db)
