//Chapter 7: Loop, Slot and Horn Antennas
//Example 7-17.3
clc;

//Variable Initialization
Zd = 710    //Terminal impedance of cylindrical dipole
Z0 = 376.7  //Intrinsic impedance of free space (ohm)

//Calculation
Z1 = Z0**2/(4*Zd)   //Terminal resistance of complementary slot (ohm)

//Result
mprintf("The terminal resistance of the complementary slot is %.0f ohm",Z1)
