clear
clc
//to find speed of sound in the gas

//Given:
//room temperature
T = 20//in degree celsius
//parameter gama for air
gama = 1.4
//molar gas constant
R = 8.31//in J/mol.K
//molar mass for air
M = 0.0290//in Kg/mol

//Solution:
//applying laws of thermodynamics
//speed of sound in the gas
v = sqrt((gama*R*(T+273))/M)//in m/s
v = round(v)

printf ("\n\n Speed of sound in the gas v = \n\n %3i m/s" ,v);
