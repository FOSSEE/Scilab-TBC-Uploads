//(13.10)  Determine the change in entropy of the system of Example 13.6 in kJ/K.


//solution
Rbar = 8.314                                                                    //universal gas constant in SI units
//The chemical equation for the complete combustion of methane with oxygen is
//CH4 + 2O2 ---->  CO2 + 2H2O
yCH4 = 1/3
yO2 = 2/3
yCO2 = 1/3
yH2O = 2/3
//from table A-25
sbarCH4atTref = 186.16                                                          //in kj/kmol.K
sbarO2atTref = 205.03                                                           //in kj/kmol.K

sbarCH4 = sbarCH4atTref - Rbar*log(yCH4)
sbarO2 = sbarO2atTref - Rbar*log(yO2)

p2 = 3.02                                                                       //in atm
pref = 1                                                                        //in atm
//with help from table A-23
sbarCO2 = 263.559 - Rbar*log(yCO2*p2/pref)                                      //in kj/kmol.K
sbarH2O = 228.321 - Rbar*log(yH2O*p2/pref)                                      //in kj/kmol.K

deltaS = sbarCO2 + 2*sbarH2O - sbarCH4 -2*sbarO2                                //in kj/K
printf('the chenge in entropy of the system  in kJ/K is:  %f',deltaS)