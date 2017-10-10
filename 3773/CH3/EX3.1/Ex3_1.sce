//Chapter 3: The Antenna Family
//Example 3-3.2
clc;

//Variable Initialization
Z_0 = 377   //Intrinsic impedance of free space(ohm)
Z_d = 710 +%i   //Terminal impedance of dipole cylinder (ohm)

//Calculation
Z_s = (Z_0**2)/(4*Z_d)  //Terminal impedance of the slot (ohm)

//Result
mprintf("The terminal impedance of the slot is %d ohms",Z_s)
