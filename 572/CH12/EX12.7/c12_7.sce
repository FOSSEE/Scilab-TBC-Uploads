//(12.7)  A 1 kg sample of moist air initially at 21C, 1 bar, and 70% relative humidity is cooled to 5C while keeping the pressure constant. Determine (a) the initial humidity ratio, (b) the dew point temperature, in C, and (c) the amount of water vapor that condenses, in kg.

//solution

//variable initialization
m =1                                                                            //mass of sample in kg
T1 = 21                                                                         //initial temperature in degree celcius
psi1 = .7                                                                       //initial relative humidity
T2 = 5                                                                          //final temperature in degree celcius

//part(a)
//from table A-2
pg = .02487                                                                     //in bar

pv1 = psi1*pg                                                                   //partial pressure of water vapor in bar

omega1 = .622*(.2542)/(14.7-.2542)
printf('the initial humidity ratio is:  %f',omega1)

//part(b)
//The dew point temperature is the saturation temperature corresponding to the partial pressure, pv1. Interpolation in Table A-2 gives
T = 15.3                                                                        //the dew point temperature in degree celcius
printf('\n\nthe dew point temperature in degree celcius is:  %f',T)

//part(c)
mv1 = 1/[(1/omega1)+1]                                                          //initial amount of water vapor in the sample in kg
ma = m-mv1                                                                      //mass of dry air present in kg

//the partial pressure of the water vapor remaining in the system at the final state is the saturation pressure corresponding to 5C:
pg = .00872                                                                     //in bar
omega2 = .622*(pg)/(1.01325-pg)                                                 //humidity ratio after cooling

mv2 = omega2*ma                                                                 //The mass of the water vapor present at the final state
mw = mv1-mv2
printf('\n\n the amount of water vapor that condenses, in kg. is:  %f',mw)


































