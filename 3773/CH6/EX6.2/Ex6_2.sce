//Chapter 6: Electric Dipoles, Thin Linear Antennas and Arrays of Dipoles and Apertures
//Example 6-8.2
clc;

//Variable Initialization
z = 73.0      //Self impedance of lambda/2 dipole (ohm)
zm = 64.4     //Mutual impedance with lambda/8 spacing (ohm)

//Calculation
D = sqrt((2*z)/(z-zm))*sin(%pi/8) //Field gain over lambda/2 dipole (unitless)
D_db = 20*log10(D)     //Field gain over lambda/2 dipole (in dB)

gain_iso = (D**2)*1.64      //Gain over isotropic source (unitless)
gain_iso_db = 10*log10(gain_iso)   //Gain over isotropic source (in dB)

//Result
mprintf("The field gain over lambda/2 dipole is %.2f or %.2f dB",D,D_db)
mprintf("\nThe gain over isotropic source is %.2f or %.1f dB", gain_iso,gain_iso_db)
