//Chapter 4: Radiation
//Example 4-5.1
clc;

//Variable Initialization
dl = 1e-2       //Length of radiating element (m)
I_eff = 0.5     //Effective current (A)
f = 3e9         //Frequency (Hz)
c = 3e8         //Velocity of light (m/s)

//Calculation
w = 2*%pi*f     //Angular Frequency (rad/s)
P = 20*(w**2)*(I_eff**2)*(dl**2)/(c**2)     //Radiated power (W)

//Result
mprintf("The radiated power is %.2f W", P)

//The answer obtained is varying compared with the textbook answer because of a calculation error
