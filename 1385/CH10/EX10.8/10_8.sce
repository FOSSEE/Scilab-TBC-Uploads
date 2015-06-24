clc
//initialisation of variables
R= 8.31 //J/mol K
T= 25 //C
F= 96500 //coloums
c= 0.08 //molar
c1= 0.04 //molar
//CALCULATIONS
E= R*(T+273)*log(c/c1)/(2*F)
E1= 2*E
//RESULTS
printf (' potential of the cell = %.4f v',E)
printf (' \n potential of the cell = %.4f v',E1)
