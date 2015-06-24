//(11.8)  Nitrogen enters a turbine operating at steady state at 100 bar and 300 K and exits at 40 bar and 245 K. Using the enthalpy departure chart, determine the work developed, in kJ per kg of nitrogen flowing, if heat transfer with the surroundings can be ignored. Changes in kinetic and potential energy from inlet to exit also can be neglected.

//solution

//variable initialization
p1 = 100                                                                        //in bar
T1 = 300                                                                        //in kelvin
p2 = 40                                                                         //in bar
T2 = 245                                                                        //in kelvin


//from table A-23
h1starbar = 8723                                                                //in kj/kmol
h2starbar = 7121                                                                //in kj/kmol
//From Tables A-1
Tc = 126                                                                        //critical temperature in kelvin
pc = 33.9                                                                       //critical pressure in bar
TR1 = T1/Tc                                                                     //reduced temperature at the inlet
PR1 = p1/pc                                                                     //reduced pressure at the inlet
TR2 = T2/Tc                                                                     //reduced temperature at the exit
PR2 = p2/pc                                                                     //reduced pressure at the exit

M = 28                                                                          //molar mass in kg/kmol
Rbar = 8.314                                                                    //universal gas constant in kj/(kmol.K)

Term1 = .5                                                                      
Term2 = .31

wcvdot = (1/M)*[h1starbar-h2starbar-Rbar*Tc*(Term1-Term2)]                      //in kj/kg
printf('the work developed, in kJ per kg of nitrogen flowing is :  %f',wcvdot)


















