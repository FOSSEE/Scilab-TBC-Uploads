//(9.1)  The temperature at the beginning of the compression process of an air-standard Otto cycle with a compression ratio of 8 is 300K, the pressure is 1 bar, a d the cylinder volume is 560 cm3. The maximum temperature during the cycle is 2000K. Determine (a) the temperature and pressure at the end of each process of the cycle, (b) the thermal efficiency, and (c) the mean effective pressure, in atm.

//solution

//variable initialization
T1 = 300                                                                        //The temperature at the beginning of the compression process in kelvin
p1 = 1                                                                          //the pressure at the beginning of the compression process in bar
r = 8                                                                          //compression ratio
V1 = 560                                                                        //the volume at the beginning of the compression process in cm^3
T3 = 2000                                                                       //maximum temperature during the cycle in kelvin

//part(a)
//at T1 = 300k,table A-22 gives
u1 = 214.07                                                                     //in kj/kg
vr1 = 621.2             
//For the isentropic compression Process 1–2
vr2 = vr1/r
//Interpolating with vr2 in Table A-22, we get
T2 = 673                                                                        //in kelvin
u2 = 491.2                                                                      //in kj/kg
//With the ideal gas equation of state
p2 = p1*(T2/T1)*(r)                                                             //in bars
//Since Process 2–3 occurs at constant volume, the ideal gas equation of state gives
p3 = p2*(T3/T2)                                                                 //in bars
//At T3 = 2000 K, Table A-22 gives
u3 = 1678.7                                                                     //in kj/kg
vr3 = 2.776
//For the isentropic expansion process 3–4
vr4 = vr3*(r)
//Interpolating in Table A-22 with vr4 gives
T4 = 1043                                                                       //in kelvin
u4 = 795.8                                                                      //in kj/kg
//the ideal gas equation of state applied at states 1 and 4 gives
p4 = p1*(T4/T1)                                                                 //in bars
printf('at state1, the pressure in bar is:  %f',p1)
printf('\natstate1, the temperature in kelvin is  %f',T1)
printf('\n\nat state2, the pressure in bar is:  %f',p2)
printf('\natstate2, the temperature in kelvin is  %f',T2)
printf('\n\nat state3, the pressure in bar is:  %f',p3)
printf('\natstate3, the temperature in kelvin is  %f',T3)
printf('\n\nat state4, the pressure in bar is:  %f',p4)
printf('\natstate4, the temperature in kelvin is  %f',T4)

//part(b)
eta = 1-(u4-u1)/(u3-u2)                                                         //thermal efficiency
printf('\n\n\nthe thermal efficiency is:  %f',eta)

//part(c)
R = 8.314                                                                       //universal gas constant, in SI units
M = 28.97                                                                       //molar mass of air in grams
m = ((p1*V1)/((R/M)*T1))*10^-6*10^5*10^-3                                       //mass of the air in kg

Wcycle = m*((u3-u4)-(u2-u1))                                                    //the net work per cycle in KJ
mep = (Wcycle/(V1*(1-1/r)))*10^6*10^3*10^-5                                     //in bars
printf('\n\n\nthe mean effective pressure, in atm. is:   %f',mep/1.01325)












