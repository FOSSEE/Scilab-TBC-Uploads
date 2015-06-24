//(10.4)   Air enters the compressor of an ideal Brayton refrigeration cycle at 1 bar, 270K, with a volumetric flow rate of 1.4 m3/s. If the compressor pressure ratio is 3 and the turbine inlet temperature is 300K, determine (a) the net power input, in kW, (b) the refrigeration capacity, in kW, (c) the coefficient of performance

//solution

//variable initialization
p1 = 1                                                                          //in bar
T1 = 270                                                                        //in kelvin
AV = 1.4                                                                        //in m^3/s
r = 3                                                                           //compressor pressure ratio
T3 = 300                                                                        //turbine inlet temperature in kelvin

//analysis
//From Table A-22,
h1 = 270.11                                                                     //in kj/kg
pr1 = .9590
pr2 = r*pr1
//interpolating in Table A-22,
h2s = 370.1                                                                     //in kj/kg
//From Table A-22,
h3 = 300.19                                                                     //in kj/kg
pr3 = 1.3860
pr4 = pr3/r
//Interpolating in Table A-22, we obtain
h4s = 219                                                                       //in kj/kg

//part(a)
R = 8.314                                                                       //universal gas constant, in SI units
M = 28.97                                                                       //molar mass of air in grams
mdot = (AV*p1)/((R/M)*T1)*10^2                                                  //mass flow rate in kg/s

Wcycledot = mdot*((h2s-h1)-(h3-h4s))
printf('the net power input in kw is:  %f',Wcycledot)

//part(b)
Qindot = mdot*(h1-h4s)                                                          //refrigeration capacity in kw
printf('\nthe refregeration capacity in kw is:  %f',Qindot)

//part(c)
beta = Qindot/Wcycledot                                                         //coefficient of performance
printf('\nthe coefficient of performance is:  %f',beta)














