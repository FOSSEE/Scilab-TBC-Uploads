//(12.1)  The molar analysis of the gaseous products of combustion of a certain hydrocarbon fuel is CO2, 0.08; H2O, 0.11; O2, 0.07; N2, 0.74. (a) Determine the apparent molecular weight of the mixture. (b) Determine the composition in terms of mass fractions (gravimetric analysis).

//solution

//variable initialization
n1 = .08                                                                        // mole fraction of CO2
n2 = .11                                                                        // mole fraction of H2O
n3 = .07                                                                        //mole fraction of O2
n4 = .74                                                                        //mole fraction of N2

//part(a)
M1 = 44                                                                         //molar mass of CO2 in kg/kmol
M2 = 18                                                                         //molar mass of H2O in kg/kmol
M3 = 32                                                                         //molar mass of O2 in kg/kmol
M4 = 28                                                                         //molar mass of N2 in kg/kmol

M = M1*n1 + M2*n2 + M3*n3 + M4*n4                                               //in kg/kmol
printf('the apparent molecular weight of the mixture in kg/kmol is:  %f',M)

//part(b)
mf1 = (M1*n1/M)*100                                                             //mass fraction of CO2 in percentage 
mf2 = (M2*n2/M)*100                                                             //mass fraction of H2O in percentage
mf3 = (M3*n3/M)*100                                                             //mass fraction of O2 in percentage
mf4 = (M4*n4/M)*100                                                             //mass fraction of N2 in percentage

printf('\n\nthe mass fraction of CO2 in percentage is:  %f',mf1)
printf('\nthe mass fraction of H2O in percentage is:  %f',mf2)
printf('\nthe mass fraction of O2 in percentage is:  %f',mf3)
printf('\nthe mass fraction of N2 in percentage is:  %f',mf4)
