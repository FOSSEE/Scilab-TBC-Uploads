//(13.8)  Liquid octane at 25C, 1 atm enters a well-insulated reactor and reacts with air entering at the same temperature and pressure. For steady-state operation and negligible effects of kinetic and potential energy, determine the temperature of the combustion products for complete combustion with (a) the theoretical amount of air, (b) 400% theoretical air.

//solution

//part(a)
//For combustion of liquid octane with the theoretical amount of air, the chemical equation is
//C8H18(l) + 12.5 O2 + 47N2   -------> 8 CO2 + 9 H2O(g) + 47N2
//with enthalpy of formation data from Table A-25
hfbarC8H18 = -249910                                                            //in kj/kmol
hfbarCO2 = -393520
hfbarH2O = -241820

RHS = hfbarC8H18 -(8*hfbarCO2 + 9*hfbarH2O)                                     //in kj/kmol

//at temperature 2400k
LHS1 = 5089337                                                                   //in kj/kmol
//at temperature 2350 k
LHS2 = 4955163                                                                   //in kj/kmol
//Interpolation between these temperatures gives
Tp = 2400 + [(2400-2350)/(LHS1-LHS2)]*(RHS-LHS1)
printf('the temperature in kelvin with theoretical amount of air is:  %f',Tp)

//part(b)
//For complete combustion of liquid octane with 400% theoretical air, the chemical equation is
//C8H18(l) + 50O2 + 188N2  -------->  8CO2 + 9H2O + 37.5O2 + 188N2

//proceeding iteratively as part(a)
Tp = 962                                                                        //in kelvin
printf('\n\nthe temperature in kelvin using 400 percent theoretical air is:  %f',Tp)












