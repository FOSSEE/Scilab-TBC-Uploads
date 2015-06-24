//(13.14)   Methane gas enters a reactor and burns completely with 140% theoretical air. Combustion products exit as a mixture at temperature T and a pressure of 1 atm. For T = 480 and 1560 K, evaluate the flow exergy of the combustion products, in kJ per kmol of fuel. Perform calculations relative to an environment consisting of an ideal gas mixture at 25C, 1 atm with the molar analysis, yeN2 = 0.7567, yeO2 = 0.2035, yeH2O = 0.0303, yeCO2 = 0.0003.



//solution

//For 140% theoretical air, the reaction equation for complete combustion of methane is
//CH4 + 2.8(O2 + 3.76N2)  ------->  CO2 + 2H2O + 10.53N2 + .8O2

//for product side
yCO2p = 1/(1+2+10.53+.8)
yH2Op = 2/(1+2+10.53+.8)
yN2p = 10.53/(1+2+10.53+.8)
yO2p = .8/(1+2+10.53+.8)

Rbar = 8.314                                                                    //universal gas constant in SI units
Tnot = 298.15                                                                      //in kelvin

yeN2 = .7567
yeO2 = .2035
yeH2O = .0303
yeCO2 = .0003

ebarch = Rbar*Tnot*(log(yCO2p/yeCO2) + 2*log(yH2Op/yeH2O) + 10.53*log(yN2p/yeN2) + .8*log(yO2p/yeO2))

//with data from tables A-23 at 480 and 1560 kelvin,the thermomechanical contribution to the flow exergy, per mole of fuel, is
contri480 = 17712                                                               //kJ per kmol of fuel
contri1560 = 390853                                                             //kJ per kmol of fuel

efbar480 = contri480 + ebarch                                                   //kJ per kmol of fuel
efbar1560 = contri1560 + ebarch                                                 //kJ per kmol of fuel

printf('at T= 480k, the flow exergy of the combustion products, in kJ per kmol of fuel is:  %f',efbar480)
printf('\nat T = 1560K, the flow exergy of the combustion products, in kJ per kmol of fuel is:  %f',efbar1560)









