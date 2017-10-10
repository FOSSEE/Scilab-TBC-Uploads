//Chapter 7: Loop, Slot and Horn Antennas
//Example 7-17.1
clc;

//Variable Initialization
Z0 = 376.7      //Intrinsic impedance of free space (ohm)
Zd = 73 + 42.5*%i //Impedance of infinitely small thin lambda/2 antenna (ohm)

//Calculation
Z1 = (Z0**2)/(4*Zd) //Terminal impedance of the lambda/2 slot antenna (ohm)

//Result
mprintf("The terminal impedance of the thin lambda/2 slot antenna is %.0f%dj ohm",real(Z1),imag(Z1))
