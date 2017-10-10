clear//

//Variables

p = 2.83 * 10**-8    //Resistivity (in ohm-meter)
w = 0.5              //width (in meter)
t = 2 * 10**-3       //thickness (in meter)
l = 1                //length (in meter)

//Calculation

A = w * t            //Area of cross-section (in metersquare)
R = p*l/A            //Resistance (in ohm)

//Result

printf("\n The resistance between left end and right end is  %0.3f  micro-ohm.",R * 10**6)
