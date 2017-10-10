//Chapter 14 Determination of Hydroniumion Concentrations

clc;
clear;

//Initialisation of Variables
E= 0.232 //v
R= 0.0592
p= 1 //atm
R1= 0.0296
P= 740 //atm

//CALCULATIONS
pH= E/R
pH1= (E-R1*log10(P/760))/R
e= pH1-pH
e= e-0.002

//RESULTS
mprintf("Error in pH of solution= %.3f",e)
