//(12.13)   Air at 38C and 10% relative humidity enters an evaporative cooler with a volumetric flow rate of 140 m3/min. Moist air exits the cooler at 21C. Water is added to the soaked pad of the cooler as a liquid at 21C and evaporates fully into the moist air. There is no heat transfer with the surroundings and the pressure is constant throughout at 1 atm. Determine (a) the mass flow rate of the water to the soaked pad, in lb/h, and (b) the relative humidity of the moist air at the exit to the evaporative cooler.

//solution

//variable initialization
T1 = 38                                                                         //temperature of entering air in degree celcius
psi1 = .1                                                                       //relative humidity of entering air 
AV1 = 140                                                                       //volumetric flow rate of entering air in m^3/min
Tw = 21                                                                         //temperature of added water in degree celcius
T2 = 21                                                                         //temperature of exiting moist air in degree celcius
p = 1                                                                           //pressure in atm

//part(a)
//from table A-2
pg1 = .066                                                                      //in bar
pv1 = psi1*pg1                                                                  //the partial pressure of the moist air entering the control volume in bar
omega1 = .622*[pv1/(p*1.01325-pv1)]
//The specific volume of the dry air can be evaluated from the ideal gas equation of state. The result is
va1 = .887                                                                      //in m^3/kg
cpa = 1.005
madot = AV1/va1                                                                 //mass flow rate of the dry air in kg/min
//from table A-2
hf = 88.14
hg1 = 2570.7
hg2 = 2539.94

omega2 = [cpa*(T1-T2)+omega1*(hg1-hf)]/(hg2-hf)
mwdot = madot*60*(omega2-omega1)                                                //in kg/h
printf('the mass flow rate of the water to the soaked pad in kj/h is:  %f',mwdot)

//part(b)
pv2 = (omega2*p*1.01325)/(omega2+.622)                                          //in bars
//At 21C, the saturation pressure is
pg2 = .02487
psi2 = pv2/pg2
printf('\n the relative humidity of the moist air at the exit to the evaporative cooler is:  %f',psi2)









