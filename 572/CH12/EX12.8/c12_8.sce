//(12.8)  An air–water vapor mixture is contained in a rigid, closed vessel with a volume of 35 m3 at 1.5 bar, 120C, and psi =  10%. The mixture is cooled at constant volume until its temperature is reduced to 22C. Determine (a) the dew point temperature corresponding to the initial state, in C, (b) the temperature at which condensation actually begins, in C, and (c) the amount of water condensed, in kg.

//solution

//variable initialization
V = 35                                                                          //volume of the vessel in m^3
p1 = 1.5                                                                        //in bar
T1 = 120                                                                        //in degree celcius
psi1 = .1                                                                       
T2 = 22                                                                         //in degree celcius

//part(a)
//The dew point temperature at the initial state is the saturation temperature corresponding to the partial pressure pv1. With the given relative humidity and the saturation pressure at 120C from Table A-2
pg1 = 1.985
pv1 = psi1*pg1                                                                  //partial pressure in bar
//Interpolating in Table A-2 gives the dew point temperature as
T = 60                                                                          //in degree celcius
printf('the dew point temperature corresponding to the initial state, in degee celcius is:  %f',T)

//part(b)
Rbar = 8314                                                                     //universal gas constant
Mv = 18                                                                         //molar mass of vapor in kj/kmol
vv1 =((Rbar/Mv)*(T1+273))/(pv1*10^5)                                             //the specific volume of the vapor at state 1 in m^3/kg
//Interpolation in Table A-2
Tdash = 56                                                                      //in degrees
printf('\n\nthe temperature at which condensation actually begins in degree celcius is:  %f',Tdash)

//part(c)
mv1 = V/vv1                                                                     //initial amount of water vapor present in kg
//from table 
vf2 = 1.0022e-3
vg2 = 51.447
vv2 = vv1                                                                       //specific volume at final state

x2 = (vv2-vf2)/(vg2-vf2)                                                        //quality
mv2 = x2*mv1                                                                    //the mass of the water vapor contained in the system at the final state
mw2 = mv1-mv2
printf('\n\n the amount of water condense in kg is:  %f',mw2)




























