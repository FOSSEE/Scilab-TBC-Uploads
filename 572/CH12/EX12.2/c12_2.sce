//(12.2)   A gas mixture has the following composition in terms of mass fractions: H2, 0.10; N2, 0.60; CO2, 0.30. Determine (a) the composition in terms of mole fractions and (b) the apparent molecular weight of the mixture.

//solution

//variable initialization
mf1 = .1                                                                        //mass fractiion of H2
mf2 = .6                                                                        //mass fraction of N2
mf3 = .3                                                                        //mass fraction of CO2

//part(a)
M1 = 2                                                                          //molar mass of H2 in kg/kmol
M2 = 28                                                                         //molar mass of N2 in kg/kmol
M3 = 44                                                                         //molar mass of CO2 in kg/kmol

n1 = (mf1/M1)/(mf1/M1 + mf2/M2 + mf3/M3)                                        //mole fraction of H2 
n2 = (mf2/M2)/(mf1/M1 + mf2/M2 + mf3/M3)                                        //mole fraction of N2
n3 = (mf3/M3)/(mf1/M1 + mf2/M2 + mf3/M3)                                        //mole fraction of CO2

printf('the mole fraction of H2 in percentage is:  %f',n1*100)
printf('\nthe mole fraction of N2 in percentage is:  %f',n2*100)
printf('\nthe mole fraction of CO2 in percentage is:  %f',n3*100)

//part(b)
M = n1*M1 + n2*M2 + n3*M3                                                       //in kg/kmol
printf('\n\nthe apparent molecular weight of the mixture in kg/kmol is:  %f',M)