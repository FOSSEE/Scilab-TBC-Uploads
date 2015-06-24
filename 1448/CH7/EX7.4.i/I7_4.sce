clc
//Initialization of variables
GCO2=-394 //kJ/mol
GCO=-137 //kJ/mol
GO2=0
//calculations
deltaG=2*GCO2-2*GCO+GO2
//results
printf('Standard reaction gibbs energy = %d kJ/mol',deltaG)
