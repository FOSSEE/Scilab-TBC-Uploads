//(12.6)  At steady state, 100 m3/min of dry air at 32C and 1 bar is mixed adiabatically with a stream of oxygen (O2) at 127C and 1 bar to form a mixed stream at 47C and 1 bar. Kinetic and potential energy effects can be ignored. Determine (a) the mass flow rates of the dry air and oxygen, in kg/min, (b) the mole fractions of the dry air and oxygen in the exiting mixture, and (c) the time rate of entropy production, in kJ/K . min

//solution

//variable initialization
T1 = 32                                                                         //temperature of dry air in degree celcius
p1 = 1                                                                          //pressure of dry air in bar
AV1 = 100                                                                       //volume rate of dry air in m^3/min
T2 = 127                                                                        //temperature of oxygen stream in degree celcius
p2 = 1                                                                          //pressure of oxygen stream in bar
T3 = 47                                                                         //temperature of mixed stream in degree celcius
p3 = 1                                                                          //pressure of mixed stream in bar

//part(a)
Rbar = 8314                                                                     //universal gas constant
Ma = 28.97                                                                      //molar mass of air
Mo = 32                                                                         //molar mass of oxygen

va1 = (Rbar/Ma)*(T1+273)/(p1*10^5)                                              //specific volume of air in m^3/kg
ma1dot = AV1/va1                                                                //mass flow rate of dry air in kg/min

//from table A-22 and A-23
haT3 = 320.29                                                                   //in kj/kg
haT1 = 305.22                                                                   //in kj/kg
hnotT2 = 11711                                                                  //in kj/kmol
hnotT1 = 9325                                                                   //in kj/kmol

modot = ma1dot*(haT3-haT1)/[(1/Mo)*(hnotT2-hnotT1)]                             //in kg/min
printf('the mass flow rate of dry air in kg/min is:  %f',ma1dot)
printf('\nthe mass flow rate of oxygen in kg/min is:  %f',modot)

//part(b)
nadot = ma1dot/Ma                                                               //molar flow rate of air in kmol/min
nodot = modot/Mo                                                                //molar flow rate of oxygen in kmol/min

ya = nadot/(nadot+nodot)                                                        //mole fraction of air
yo = nodot/(nadot+nodot)                                                        //mole fraction of oxygen

printf('\n\nthe mole fraction of dry air in the exiting mixture is:  %f',ya)
printf('\nthe mole fraction of dry oxygen in the exiting mixture is:  %f',yo)

//part(c)
//with the help of tables A-22 and A-23
sanotT3 = 1.7669                                                                //in kj/kg.K
sanotT1 = 1.71865                                                               //in kj/kg.K
sbarT3 = 207.112                                                                //in kj/kmol.K
sbarT2 = 213.765                                                                //in kj/kmol.K

sigmadot = ma1dot*[sanotT3-sanotT1-(8.314/Ma)*log(ya)] + (modot/Mo)*[sbarT3-sbarT2-8.314*log(yo)]
printf('\n\nthe time rate of entropy production, in kJ/K . min is:  %f',sigmadot)

































