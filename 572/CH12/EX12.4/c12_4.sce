//(12.4)   A gas mixture consisting of CO2 and O2 with mole fractions 0.8 and 0.2, respectively, expands isentropically and at steady state through a nozzle from 700 K, 5 bars, 3 m/s to an exit pressure of 1 bar. Determine (a) the temperature at the nozzle exit, in K, (b) the entropy changes of the CO2 and O2 from inlet to exit, in KJ/Kmol.K (c) the exit velocity, in m/s.

//solution

//variable initialization
y1 = .8                                                                         //mole fraction of CO2
y2 = .2                                                                         //mole fraction of O2
T1 = 700                                                                        //in kelvin
p1 = 5                                                                          //in bars
V1 = 3                                                                          //in m/s
p2 = 1                                                                          //in bars


//part(a)
//from table A-23
sO2barT1 = 231.358
sCO2barT1 = 250.663

RHS = y2*sO2barT1 + y1*sCO2barT1 + 8.314*log(p2/p1)

//using table A-23
LHSat510K = y2*221.206 + y1*235.7
LHSat520K = y2*221.812 + y1*236.575
//using linear interpolation,
T2 = 510 +[(520-510)/(LHSat520K-LHSat510K)]*(RHS-LHSat510K)
printf('the temperature at the nozzle exit in K is:  %f',T2)

//part(b)
//from table A-23
sbarO2T2 = 221.667                                                              //in kj/kmol.K
sbarO2T1 = 231.358                                                              //in kj/kmol.K
sbarCO2T2 = 236.365                                                             //in kj/kmol.K
sbarCO2T1 = 250.663                                                             //in kj/kmol.K

deltasbarO2 = sbarO2T2-sbarO2T1-8.314*log(p2/p1)                                //in kj/kmol.K
deltasbarCO2 = sbarCO2T2-sbarCO2T1-8.314*log(p2/p1)                             //in kj/kmol.K

printf('\n\nthe entropy changes of the CO2 from inlet to exit, in KJ/Kmol.K is:  %f',deltasbarCO2)
printf('\nthe entropy change of the O2 from inlet to the exit in kj/kmol.k is:  %f',deltasbarO2)

//part(c)
//from table A-23, the molar specific enthalpies of O2 and CO2 are
h1barO2 = 21184
h2barO2 = 15320
h1barCO2 = 27125
h2barCO2 = 18468

M = y1*44 + y2*32                                                               //apparent molecular weight of the mixture in kg/kmol
deltah = (1/M)*[y2*(h1barO2-h2barO2) + y1*(h1barCO2-h2barCO2)]
V2 = sqrt(V1^2+ 2*deltah*10^3)
printf('\n\nthe exit velocity in m/s is:  %f',V2)








