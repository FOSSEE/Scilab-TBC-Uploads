//Chapter 6: Electric Dipoles, Thin Linear Antennas and Arrays of Dipoles and Apertures
//Example 6-12.1
clc;

//Variable Initialization
s1 = 0.4            //Spacing 1(lambda)
s2 = 0.5            //Spacing 2(lambda)
s3 = 0.6            //Spacing 3(lambda)
R_21_1 = 6.3        //Mutual resistance for s1 (ohm)
R_21_2 = -12.691    //Mutual resistance for s2 (ohm)
R_21_3 = -23.381    //Mutual resistance for s3 (ohm)  
Z = 73.13           //Self impedance of lambda/2 dipole (ohm)

//Calculation
gain_1 = sqrt(2*(Z/(Z+R_21_1)))     //Gain in field for s1 (unitless)
gain_iso1 = 1.64*(gain_1**2)        //Power gain over isotropic (unitless)
gain_iso_db1 = 10*log10(gain_iso1)  //Power gain (in dBi)

gain_2 = sqrt(2*(Z/(Z+R_21_2)))     //Gain in field for s2 (unitless)
gain_iso2 = 1.64*(gain_2**2)        //Power gain over isotropic (unitless)
gain_iso_db2 = 10*log10(gain_iso2)  //Power gain (in dBi)

gain_3 = sqrt(2*(Z/(Z+R_21_3)))     //Gain in field for s3 (unitless)
gain_iso3 = 1.64*(gain_3**2)        //Power gain over isotropic (unitless)
gain_iso_db3 = 10*log10(gain_iso3)  //Power gain (in dBi)

//Result
mprintf( "The gain in field over half wave antenna for s1 is %.2f",gain_1)
mprintf( "\nThe power gain over isotropic for s1 is %.2f or %.1f dBi",gain_iso1,gain_iso_db1)

mprintf( "\n\nThe gain in field over half wave antenna for s2 is %.2f",gain_2)
mprintf( "\nThe power gain over isotropic for s2 is %.2f or %.2f dBi ", gain_iso2,gain_iso_db2)

mprintf( "\n\nThe gain in field over half wave antenna for s3 is %.2f",gain_3)
mprintf( "\nThe power gain over isotropic for s3 is %.2f or %.2f dBi ",gain_iso3,gain_iso_db3)
