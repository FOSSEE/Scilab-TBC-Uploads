//(13.9)  Liquid octane at 25C, 1 atm enters a well-insulated reactor and reacts with air entering at the same temperature and pressure. The products of combustion exit at 1 atm pressure. For steady-state operation and negligible effects of kinetic and potential energy, determine the rate of entropy production, in kJ/K per kmol of fuel, for complete combustion with (a) the theoretical amount of air, (b) 400% theoretical air.

//solution

//part(a)
Tp = 2395                                                                       //in kelvin, from example 13.8
//For combustion of liquid octane with the theoretical amount of air, the chemical equation is
//C8H18(l) + 12.5O2 + 47N2  ---->  8CO2 + 9H2O(g) + 47N2

//from table A-25
sFbar = 360.79                                                                  //absolute entropy of liquid octane in kj/kmol.K

//from table A-23
//for reactant side
sbarO2atTref = 205.03                                                           //in kj/kmol.K
sbarN2atTref = 191.5                                                            //in kj/kmol.K

Rbar = 8.314                                                                    //universal gas constant in SI units

yO2 = .21
yN2 = .79

sbarO2 = sbarO2atTref - Rbar*log(yO2)                                           //in kj/kmol.K
sbarN2 = sbarN2atTref - Rbar*log(yN2)                                           //in kj/kmol.K

//for product side
yCO2 = 8/64
yH2O = 9/64
yN2p = 47/64

//with the help from table A-23
sbarCO2 = 320.173 - Rbar*log(yCO2)
sbarH2O = 273.986 - Rbar*log(yH2O)
sbarN2p = 258.503 - Rbar*log(yN2p)

sigmadot = (8*sbarCO2 + 9*sbarH2O + 47*sbarN2p) - sFbar - (12.5*sbarO2 + 47*sbarN2)
printf(' the rate of entropy production, in kJ/K per kmol of fuel with theoretical amount of air is:  %f',sigmadot)

//part(b)
//The complete combustion of liquid octane with 400% theoretical air is described by the following chemical equation:
//C8H18(l) + 50 O2 + 188N2  ----->  8 CO2 + 9H2O(g) + 37.5O2 + 188N2

//for product side 
yCO2 = 8/242.5
yH2O = 9/242.5
yO2 = 37.5/242.5
yN2p = 188/242.5

//with help from table A-23
sbarCO2 = 267.12 - Rbar*log(yCO2)
sbarH2O = 231.01 - Rbar*log(yH2O)
sbarO2p = 242.12 - Rbar*log(yO2)
sbarN2p = 226.795 - Rbar*log(yN2p)

sigmadot = (8*sbarCO2 + 9*sbarH2O + 37.5*sbarO2p +188*sbarN2p) -sFbar - (50*sbarO2 + 188*sbarN2)
printf('\n\nthe rate of entropy production, in kJ/K per kmol of fuel with 400 percent theoretical air is:  %f',sigmadot)















