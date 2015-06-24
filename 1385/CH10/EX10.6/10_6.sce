clc
//initialisation of variables
E1= 0.763 //v
c= 0.1 //mol/lit
c1= 0.01 //mol/lit
R= 8.31 //J/mol K
T= 25 //C
F= 96500 //coloums
c2= 1 //molar
c3= 1 //molar
//CALCULATIONS
E= E1-(log10(c*c2/(c1^2*c3))*R*(273+T)*2.3/(2*F))
//RESULTS
printf (' potential of the cell = %.3f v',E)
