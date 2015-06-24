clc
//initialisation of variables
R= 8.31 //J/mol K
T= 25 //C
F= 96500 //coloums
c= 0.02 //molar
c1= 0.1 //molar
c2= 1 //molar
c3= 1 //molar
E1= 1.486 //v
//CALCULATIONS
E= E1-R*(273+T)*2.3*log10(c*c1^2/(c2*c3))/(2*F)
//RESULTS
printf (' potential of the cell = %.3f v',E)
