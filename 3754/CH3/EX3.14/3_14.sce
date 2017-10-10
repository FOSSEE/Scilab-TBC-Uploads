clear//

//Variables

p = 14 * 10**-8                   //Resistivity of gold (in ohm-meter)
alpha = 5.8 * 10**-4              //Temperature coefficient (in per degree celsius)
l = 3                             //Length (in meter)
d = 13 * 10**-6                   //diameter of wire

//Calculation

A = %pi * d * d / 4           //Area of cross-section (in metersquare)
R = p * l /A                      //Resistance of wire at 20 degree celsius(in ohm)
R1 = R*(1 + alpha*(200-20))
//Result

printf("\n Resistance of wire at 200 degree celsius is  %0.1f  ohm.",R1)
