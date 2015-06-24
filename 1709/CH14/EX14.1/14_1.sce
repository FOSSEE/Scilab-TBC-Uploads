clc
//Initialization of variables
T=25+273 //K
F=23060
//calculations
H=-68317
G=-56690
Er=-G/(2*F)
eta=G/H
W=-G
Q=H-G
//results
printf("Voltage output of the cell = %.3f volts",Er)
printf("\n Efficiency = %d percent",eta*100 +1)
printf("\n Electrical Work output = %d cal/mol H2",W)
printf("\n Heat transfer to the surroundings = %d cal/mol H2",Q)
