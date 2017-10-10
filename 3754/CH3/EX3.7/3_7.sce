clear//

//Case 1:

//Variables

w = 0.01              //width (in meter)
h = 0.01              //height (in meter)
l = 0.50              //length (in meter)
p = 3.5 * 10**-5      //Resistivity (in ohm-meter)

//Calculation

A = w * h             //Area of cross section (in metersquare)
R = p*l/A             //Resistance (in ohm)

//Result 1:

printf("\n Resistance in case 1 is :  %0.3f  ohm.",R)

//Case 2:

//Variables

w = 0.50              //width (in meter)
h = 0.01              //height (in meter)
l = 0.01              //length (in meter)

//Calculation

A = w * h             //Area of cross section (in metersquare)
R = p*l/A             //Resistance (in ohm-meter)

//Result

printf("\n Resistance in case 2 is:  %0.3f  ohm.",R)
