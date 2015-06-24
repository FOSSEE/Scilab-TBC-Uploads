//(14.5)  Carbon dioxide at 25C, 1 atm enters a reactor operating at steady state and dissociates, giving an equilibrium mixture of CO2, CO, and O2 that exits at 3200 K, 1 atm. Determine the heat transfer to the reactor, in kJ per kmol of CO2 entering. The effectsof kinetic and potential energy can be ignored and Wcvdot = 0



//solution

//Applying the conservation of mass principle, the overall dissociation reaction is described by
//CO2  ---->  zCO2 + (1-z)CO + ((1-z)/2)O2

p = 1                                                                           //in atm
pref = 1                                                                        //in atm
//At 3200 K, Table A-27 gives
log10k = -.189
k = 10^log10k
//solving k = ((1-z)/2)*((1-z)/(3-z))^.5 gives
z = .422

//from tables A-25  and A-23
hfbarCO2 = -393520                                                              //in kj/kmol
deltahbarCO2 = 174695-9364                                                      //in kj/kmol
hfbarCO = -110530                                                               //in kj/kmol
deltahbarCO = 109667-8669                                                       //in kj/kmol
hfbarO2 = 0                                                                     //in kj/kmol
deltahbarO2 = 114809-8682                                                       //in kj/kmol
hfbarCO2r =  -393520                                                             //in kj/kmol
deltahbarCO2r = 0                                                                //in kj/kmol

Qcvdot = .422*(hfbarCO2 + deltahbarCO2) + .578*(hfbarCO + deltahbarCO) + .289*(hfbarO2 + deltahbarO2)- (hfbarCO2r + deltahbarCO2r)  
printf('the heat transfer to the reactor, in kJ per kmol of CO2 entering is:  %f',Qcvdot)   