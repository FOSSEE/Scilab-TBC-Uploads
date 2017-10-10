clear//

//Variables

p = 2.8 * 10**-8      //Resistivity (in ohm-meter)
d = 0.15 * 10**-2     //Diameter of wire (in meter)
R = 10                //Resistance (in ohm)

//Calculation

A = %pi *d*d/4    //Area of cross section (in metersquare)
l = R*A/p             //Length of wire (in meter)

//Result

printf("\n Length of the wire is  %0.0f  meter.",l)
