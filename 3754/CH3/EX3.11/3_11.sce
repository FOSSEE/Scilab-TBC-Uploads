clear//

//Variables

lc = 200                   //Length of copper wire (in meter)
Rc = 1.5                   //Resistance of Copper wire(in ohm)
pc = 1.7 * 10**-8          //Resistivity of  (in ohm-meter)
ls = 10                    //Length of silver wire (in meter)
ps = 1.6 * 10**-8          //Resistivity of Silver (in ohm-meter)

//Calculation

A = pc * lc / Rc           //Area of cross section (in metersquare)
Rs = ps * ls / A           //Resistance of silver wire(in ohm)

//Result

printf("\n The resistance of silver wire is  %0.2f  ohm.",Rs)
