//Chapter 7: Loop, Slot and Horn Antennas
//Example 7-17.2
clc;

//Variable Initialization
Zd = 67     //Terminal impedance of cylindrical antenna (ohm)
Z0 = 376.7  //Intrinsic impedance of free space (ohm)
L = 0.475   //Length of complementary slot (lambda)

//Calculation
Z1 = Z0**2/(4*Zd)   //Terminal resistance of complementary slot (ohm)
w = 2*L/100         //Width of complementary slot (lambda)

//Result
mprintf("The terminal resistance of the complementary slot is %d ohm",Z1)
mprintf("\nThe width of the complementary slot is %.4f lambda", w)
