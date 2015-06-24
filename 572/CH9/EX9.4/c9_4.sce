//(9.4)   Air enters the compressor of an ideal air-standard Brayton cycle at 100 kPa, 300 K, with a volumetric flow rate of 5 m3/s. The compressor pressure ratio is 10. The turbine inlet temperature is 1400 K. Determine (a) the thermal efficiency of the cycle, (b) the back work ratio, (c) the net power developed, in kW.

//solution

//variable initialization
T1 = 300                                                                        //in kelvin
AV = 5                                                                          //volumetric flow rate in m^3/s
p1 = 100                                                                        //in kpa
pr = 10                                                                         //compressor pressure ratio
T3 = 1400                                                                       //turbine inlet temperature in kelvin

//analysis
//At state 1, the temperature is 300 K. From Table A-22,
h1 = 300.19                                                                     //in kj/kg
pr1 = 1.386

pr2 = pr*pr1
//interpolating in Table A-22,
h2 = 579.9                                                                      //in kj/kg
//from Table A-22
h3 = 1515.4                                                                     //in kj/kg
pr3 = 450.5

pr4 = pr3*1/pr
//Interpolating in Table A-22, we get
h4 = 808.5                                                                      //in kj/kg

//part(a)
eta = ((h3-h4)-(h2-h1))/(h3-h2)                                                 //thermal efficiency
printf('the thermal efficiency is:  %f',eta)

//part(b)
bwr = (h2-h1)/(h3-h4)                                                           //back work ratio
printf('\nthe back work ratio is:  %f',bwr)

//part(c)
R = 8.314                                                                       //universal gas constant, in SI units
M = 28.97                                                                       //molar mass of air in grams
mdot = AV*p1/((R/M)*T1)                                                         //mass flow rate in kg/s

Wcycledot = mdot*((h3-h4)-(h2-h1))                                              //The net power developed
printf('\n the net power developed, in kW is:  %f',Wcycledot)

















