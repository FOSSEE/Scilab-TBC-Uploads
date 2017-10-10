//Chapter 8: Helical Antennas
//Example 8-16.1
clc;

//Variable Initialization
gain = 24.0   //Gain (dB)
alpha = 12.7    //Pitch angle (degrees)
c_lambda = 1.05 //Circumference (lambda)
s_lambda = 0.236    //Spacing between turns (lambda)

//Calculation
D = 10**(gain/10)   //Directivity (unitless)
L = D/(12*(c_lambda**2))    //Helix length (lambda)
n = L/s_lambda              //Number of turns (unitless)
D = D/4             //Directivity for four 20-turn helixes(unitless)
Ae = D/(4*%pi)       //Effective aperture of each helix (lambda^2)

//Result
mprintf("The Axial length is %.0f lambda",L)
mprintf("\nThe number of turns for the axial length is %d",n)
mprintf("\nThe effective aperture for 20 turns is %.0f lambda square",Ae)
