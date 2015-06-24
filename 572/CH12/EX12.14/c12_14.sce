//(12.14)  A stream consisting of 142 m3/min of moist air at a temperature of 5C and a humidity ratio of 0.002 kg(vapor)kg(dry air) is mixed adiabatically with a second stream consisting of 425 m3/min of moist air at 24C and 50% relative humidity. The pressure is constant throughout at 1 bar. Using the psychrometric chart, determine (a) the humidity ratio and (b) the temperature of the exiting mixed stream, in C.

//solution

//variable initialization
AV1 = 142                                                                       //in m^3/min
T1 = 5                                                                          //in degree celcius
omega1 = .002
AV2 = 425                                                                       //in m^3/min
T2 = 24                                                                         //in degree celcius
psi2 = .5
p = 1                                                                           //in bar


//part(a)
//from the psychrometric chart, Fig. A-9.
va1 = .79                                                                       //in m^3/kg
va2 = .855                                                                      //in m^3/kg
omega2 = .0094

ma1dot = AV1/va1                                                                //in kg/min
ma2dot = AV2 /va2                                                               //in kg/min

omega3 = (omega1*ma1dot+omega2*ma2dot)/(ma1dot + ma2dot)                    
printf('the humidity ratio is:  %f',omega3)

//part(b)
//Reduction of the energy rate balance gives
//(ha + omega*hv)3 = [ma1dot*(ha + omega*hv)1 + ma2dot*(ha + omega*hv)2]/(ma1dot+ma2dot)
//with (ha + omega*hv)1 = 10kj/kg and (ha + omega*hv)2 = 47.8kj/kg from figure A-9
LHS = (ma1dot*10+ma2dot*47.8)/(ma1dot + ma2dot)

//This value for the enthalpy of the moist air at the exit, together with the previously determined value for omega3, fixes the state of the exiting moist air. From inspection of Fig. A-9,
T3 = 19                                                                         //in degree celcius
printf('\n\nthe temperature of the exiting mixed stream in degree celcius is:  %f',T3)












