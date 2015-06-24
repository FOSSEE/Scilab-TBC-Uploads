//Variable declaration:
n = 3500.0                      //Inlet flowrate of water (gal/min)
Cp_W = 75.4                     //Heat capacity of water (J/(gmol . °C)
p = 62.4                        //Density of water (lb/ft^3)
M = 24*60.0                     //Minutes in a day (min/day)
G = 7.48                        //Gallons in a feet cube (gal/ft^3)
gm = 454.0                      //Grams in a pound (g/lb)
J = 1054.0                      //Joules in a Btu (J/Btu)
g = 18.0                        //Grams in a gmol (g/gmol)
F = 1.8                         //Degree fahrenheit in a degree celcius (°F)
Ti = 38.0                       //Initial temperature (°F)
Tf = 36.2                       //Final temperature (°F)

//Calculations:
T= Ti-Tf                        //Temperature loss (°F)
m = n*p*M/G                     //Mass flow rate of water (lb/day)
Cp = Cp_W*gm/J/g/F              //Heat capacity in cosistent units (Btu/(lb.°F))
Q = m*Cp*T                      //Rate of heat flow from water (Btu/day)

//Result:
printf ("The rate of Btu removed from the water per day is : %.2f  x 10**8 Btu/day.",Q/10**8)
printf ("There is a calculation mistake in the book regarding the final result.")
