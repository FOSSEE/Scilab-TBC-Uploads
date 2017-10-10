clear//

//Variables

l = 120               //length of wire (in meter)
d = 0.25 * 10**-2     //Diameter of cross section (in meter)
p = 1.7 * 10**-8      //Resistivity (in ohm-meter)

//Calculation

r = d/2               //Radius of cross section (in meter)
A = %pi *r*r      //Area of cross section (in metersquare)
R = p*l/A             //Resistance (in ohm)

//Result

printf("\n Resistance of the wire is  %0.3f  ohm.",R)
