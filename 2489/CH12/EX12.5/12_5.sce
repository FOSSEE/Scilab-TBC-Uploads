clc
//Intitalisation of variables
clear
ci= 0.1896 //mole per liter
cKI= 0.02832 //mole per liter
r= 625
//CALCULATIONS
CI2= ci/r
dc= cKI-CI2
//RESULTS
printf ('Conc of I2 in KI layer = %.6f mole per litre',CI2) 
printf ('\n Conc of I3- ions = %.5f mole per litre',dc) 
