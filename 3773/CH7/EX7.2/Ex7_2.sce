//Chapter 7: Loop, Slot and Horn Antennas
//Example 7-8.2
clc;

//Variable Initialization
Rr = 197.0        //Self resistance of loop (ohm)
Rm = 157.0       //Mutual resistance of two loops (ohm)
theta = 2*%pi/10 //Angle of radiation (radians)

//Calculation
D = 1.5*(2*sqrt(Rr/(Rr-Rm))*sin(theta))**2  //Directivity (unitless)
D_db = 10*log10(D)      //Directivity (dBi)

//Result
mprintf("The directivity is %.1f or %.1f dBi",D,D_db)
