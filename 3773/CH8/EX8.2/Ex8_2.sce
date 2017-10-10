//Chapter 8: Helical Antennas
//Example 8-5.2
clc;

//Variable Initialization
n = 16.0        //Number of turns (unitless)
C = 1       //Circumference (lambda)
S = 0.25        //Turn Spacing (lambda)

//Calculation
hpbw = 52/(C*sqrt(n*S)) //Half power beamwidth (degrees)
ax_rat = (2*n + 1)/(2*n)    //Axial ratio (unitless)
gain = 12*(C**2)*n*S        //Gain of antenna (unitless)
gain_db = 10*log10(gain)    //Gain of antenna (in dBi)

mprintf("The half power beam width is %d degrees", hpbw)
mprintf("\nThe axial ratio is %.2f",ax_rat)
mprintf("\nThe gain is %d or %.1f dBi",gain,gain_db)
