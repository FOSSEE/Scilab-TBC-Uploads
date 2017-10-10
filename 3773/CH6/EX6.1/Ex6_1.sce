//Chapter 6: Electric Dipoles, Thin Linear Antennas and Arrays of Dipoles and Apertures
//Example 6-8.1
clc;

//Variable Initialization
z = 333.0         //Driving point impedance (ohm)
r = 300.0         //Twin-line impedance (ohm)
z1 = 73.0         //Self impedance of lambda/2 dipole (ohm)
z2 = 13.0         //Mutual impedance with lambda/2 spacing (ohm)

//Calculation
pv = (z-r)/(z+r)    //Reflection coefficient (unitless)
vswr = (1+pv)/(1-pv)    //Voltage Standing Wave Ratio (unitless)
gain_l2 =sqrt((2*z1)/(z1-z2)) //Field gain over lambda/2 dipole (unitless)
gain_l2_db = 20*log10(gain_l2) //Field gain (in dB)
gain_iso = (gain_l2**2)*1.64        //Gain over isotropic source (unitless)
gain_iso_db = 10*log10(gain_iso) //Gain over isotropic source (in dB)

//Result
mprintf("The VSWR is %.2f", vswr)
mprintf("\nThe field gain over lambda/2 dipole is %.2f or %.1f dB",gain_l2,gain_l2_db)
mprintf("\nThe gain over isotropic source is %.1f or %.1f dB",gain_iso,gain_iso_db)
