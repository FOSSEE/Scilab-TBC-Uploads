clc
//initialisation of variables
T0= 25 //C
T1= 220 //C
hCO2= -393520 //kJ/kg
hH2O= -241830 //kJ/kg
hC3H8= -103850 //kJ/kg= 1.4
R= 8.314 //Jmol K
k= 1.4
k1= 1.29
//CALCULATIONS
T= T0+((15*(R*(k/(k-1)))*4.762*(T1-T0)-(3*hCO2+4*hH2O-hC3H8))/(R*((3+4)*(k1/(k1-1))+(10+56.43)*(k/(k-1)))))
//RESULTS
printf (' adiabatic flame temperature= %.f C ',T)
