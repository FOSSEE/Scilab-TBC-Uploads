clc
//Initialization of variables
Vol = 10*6*6 // ft^3
Q = Vol/3 // cfm
Aout = (%pi/4)*(4/12)^2 // ft^2
Ain = (%pi/4)*(8/12)^2 // ft^2
// calculations
Vout = Q/(Aout*60) //ft/s
Vin = Q/(Ain*60) // ft/s
// Results
printf ("the exchange rate needed is %.f cfm",Q)
printf ("\n the velocity of air exiting is %.1f ft/s",Vout)
printf ("\n the velocity of air entering is %.2f ft/s",Vin)
