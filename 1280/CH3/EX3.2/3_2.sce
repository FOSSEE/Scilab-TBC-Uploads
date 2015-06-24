clc
//initialisation of variables
M= 20 //grams
V= 25 //mm^3
//CALCULATIONS
d= M/V
d1= M*0.001/(V*0.000001)
d2= M*0.0022/(V*0.00003531)
//RESULTS
printf ('density = %.2f gm/cm^3',d)
printf ('\n density = %.f kg/m^3',d1)
printf ('\n density = %.1f slugs/ft^3',d2)
