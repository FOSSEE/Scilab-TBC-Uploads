//(14.6)  Carbon monoxide at 25C, 1 atm enters a well-insulated reactor and reacts with the theoretical amount of air entering at the same temperature and pressure. An equilibrium mixture of CO2, CO, O2, and N2 exits the reactor at a pressure of 1 atm. For steady-state operation and negligible effects of kinetic and potential energy, determine the composition and temperature of the exiting mixture in K.


//solution

//The overall reaction is
//CO + .5O2 + 1.88N2  ------->   zCO + (z/2)O2 + (1-z)CO2 + 1.88N2
p =1                                                                            //in atm
pref = 1                                                                        //in atm

//solving equations K = (z/(1-z))*(z/(5.76+z))^.5   and  z*deltahbarCO + (z/2)*deltahbarO2 + (1-z)*deltahbarCO2 + 1.88deltahbarN2 + (1-z)*[hfbarCO2-hfbarCO]= 0
z = .125
T = 2399                                                                        //in kelvin
printf('the temperature of the exiting mixture in kelvin is:  %f',T)
printf('\ncomposition of the equilibrium mixture, in kmol per kmol of CO entering the reactor, is then 0.125CO, 0.0625O2, 0.875CO2, 1.88N2.')