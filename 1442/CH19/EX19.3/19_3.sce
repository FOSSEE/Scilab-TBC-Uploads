clc
//initialisation of variables
hCO2= -393520 //kJ/kg mol
hH2O= -285840 //kJ/kg mol
hC7H16= -187820 //kJ/kg mol
M= 100
hH2O1= -241830 //kJkg mol
//CALCULATIONS
HHV= -(7*hCO2+8*hH2O-hC7H16)/M
LLV= -(7*hCO2+8*hH2O1-hC7H16)/M
//RESULTS
printf (' Higher heating vlue= %.f kJ/kg mol ',HHV)
printf (' \n Lower heating vlue= %.f kJ/kg mol ',LLV)
