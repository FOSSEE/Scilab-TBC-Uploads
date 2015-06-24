//(12.15)  Water exiting the condenser of a power plant at 38C enters a cooling tower with a mass flow rate of 4.5 X  107 kg/h. A stream of cooled water is returned to the condenser from a cooling tower with a temperature of 30C and the same flow rate. Makeup water is added in a separate stream at 20C. Atmospheric air enters the cooling tower at 25C and 35% relative humidity. Moist air exits the tower at 35C and 90% relative humidity. Determine the mass flow rates of the dry air and the makeup water, in kg/h. The cooling tower operates at steady state. Heat transfer with the surroundings and the fan power can each be neglected, as can changes in kinetic and potential energy. The pressure remains constant throughout at 1 atm.


//solution

//variable initialization
T1 = 38                                                                         //in degree celcius
m1dot = 4.5e7                                                                   //in kg/h
T2 = 30                                                                         //in degree celcius
m2dot = 4.5e7                                                                   //in kg/h
T3 = 25                                                                         //in degree celcius
psi3 = .35
T4 = 35                                                                         //in degree celcius
psi4 = .9
T5 = 20                                                                         //in degree celcius

//analysis
//The humidity ratios omega3 and omega4 can be determined using the partial pressure of the water vapor obtained with the respective relative humidity
omega3 =.00688
omega4 = .0327
//from tables A-2 and A-22
hf1 = 159.21
hf2 = 125.79
ha4 = 308.2
ha3 = 298.2
hg4 = 2565.3
hg3 = 2547.2
hf5 = 83.96

madot = [m1dot*(hf1-hf2)]/[ha4-ha3+omega4*hg4-omega3*hg3-(omega4-omega3)*hf5]   //in kg/h
m5dot = madot*(omega4-omega3)                                                   //in kg/h
printf('the mass flow rate of dry air in kg/h is:  %e',madot)
printf('\nthe mass flow rate of makeup water in kg/h is:  %e',m5dot)

















