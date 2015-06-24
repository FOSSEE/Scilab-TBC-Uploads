clear
clc
//to find fraction of molecules having speed in range 599-601m/s

//Given:
//temperature
T = 300//in K
//molar mass of oxygen
M = 0.032//in Kg/mol
//molar gas constant
R = 8.31//in J/mol.K
//velocity
v = 600//in m/s

//Solution:
//fraction of molecules having speed in range 599-601m/s
//difference in speed
dv = 2//in m/s
f = 4*%pi*((M/(2*%pi*R*T))^(3/2))*(v^2)*%e^((-M*(v^2)/(2*R*T)))*dv
f1 = f*100//in percent

printf ("\n\n Fraction of molecules having speed in range 599-601m/s f = \n\n %.1e" ,f);
printf ("\n\n Percentage of molecules having speed in range 599-601m/s f = \n\n %.2f percent" ,f1);
