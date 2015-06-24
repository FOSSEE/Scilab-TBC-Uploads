//(9.11)  A regenerative gas turbine with intercooling and reheat operates at steady state. Air enters the compressor at 100 kPa, 300 K with a mass flow rate of 5.807 kg/s. The pressure ratio across the two-stage compressor is 10. The pressure ratio across the two-stage turbine is also 10. The intercooler and reheater each operate at 300 kPa. At the inlets to the turbine stages, the temperature is 1400 K. The temperature at the inlet to the second compressor stage is 300 K. The isentropic efficiency of each compressor and turbine stage is 80%. The regenerator effectiveness is 80%. Determine (a) the thermal efficiency, (b) the back work ratio, (c) the net power developed, in kW.


//solution

//variable initialization
T1 = 300                                                                        //in kelvin
p1 = 100                                                                        //in kpa
mdot = 5.807                                                                    //in kg/s
p2 = 300                                                                        //in kpa
p3 = p2
p4 = 1000                                                                       //in kpa
p5 = p4
p6 = p4
T6 = 1400                                                                       //in kelvin
T8 = T6
p7 = 300                                                                        //in kpa
p8 = p7
etac = .8                                                                       //isentropic efficiency of compressor
etat = .8                                                                       //isentropic efficiency of turbine
etareg = .8                                                                     //regenerator effectiveness
//analysis
//from example 9.9
h1 = 300.19                                                                     //in kj/kg
h3 = h1                                                                         //in kj/kg
h2s = 411.3                                                                     //in kj/kg
h4s = 423.8                                                                     //in kj/kg
//from example 9.8
h6 = 1515.4                                                                     //in kj/kg
h8 = h6
h7s = 1095.9                                                                    //in kj/kg
h9s = 1127.6                                                                    //in kj/kg

h4 = h3 + (h4s-h3)/etac                                                         //in kj/kg
h2 = h1 + (h2s-h1)/etac                                                         //in kj/kg

h9 = h8-etat*(h8-h9s)                                                           //in kj/kg
h7 = h6-etat*(h6-h7s)                                                           //in kj/kg

h5 = h4+etareg*(h9-h4)                                                          //in kj/kg

//part(a)
wtdot = (h6-h7)+(h8-h9)                                                         //The total turbine work per unit of mass flow in kj/kg
wcdot = (h2-h1)+(h4-h3)                                                         //The total compressor work input per unit of mass flow in kj/kg
qindot = (h6-h5)+(h8-h7)                                                        //The total heat added per unit of mass flow in kj/kg

eta = (wtdot-wcdot)/qindot                                                      //thermal efficiency
printf('the thermal efficiency is:  %f',eta)

//part(b)
bwr = wcdot/wtdot                                                               //back work ratio
printf('\nthe back work ratio is:  %f',bwr)

//part(c)
Wcycledot = mdot*(wtdot-wcdot)                                                  //net power developed in kw
printf('\nthe net power developed, in kW is:  %f',Wcycledot)



























