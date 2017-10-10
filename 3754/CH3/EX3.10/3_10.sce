clear//

//Variables

p = 1.7 * 10**-8             //Resistivity (in ohm-meter)
l = 2 * 150                  //Length (in meter)
R = 0.722                    //Resistance (in ohm)

//Calculation

A = p*l/R                    //Area of cross section (in metersquare)
d = (A * 4 / %pi)**0.5   //diameter of wire (in meter)

//Result

printf("\n  Diameter of the wire is :  %0.0f  mm.",d * 10**3)
