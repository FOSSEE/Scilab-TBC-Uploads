//(9.2)    At the beginning of the compression process of an air-standard Diesel cycle operating with a compression ratio of 18, the temperature is 300 K and the pressure is 0.1 MPa. The cutoff ratio for the cycle is 2. Determine (a) the temperature and pressure at the end of each process of the cycle, (b) the thermal efficiency, (c) the mean effective pressure, in MPa.

//solution

//variable initialization
r = 18                                                                          //compression ratio
T1 = 300                                                                        //temperature at the beginning of the compression process in kelvin
p1 = .1                                                                         //pressure at the beginning of the compression process in MPa
rc = 2                                                                          //cutoff ratio

//part(a)
//With T1 = 300 K, Table A-22 gives
u1 = 214.07                                                                     //in kj/kg
vr1 = 621.2                             
//For the isentropic compression process 1–2
vr2 = vr1/r
//Interpolating in Table A-22, we get
T2 = 898.3                                                                      //in kelvin            
h2 = 930.98                                                                     //in kj/kg
//With the ideal gas equation of state
p2 = p1*(T2/T1)*(r)                                                             //in MPa
//Since Process 2–3 occurs at constant pressure, the ideal gas equation of state gives
T3 = rc*T2                                                                      //in kelvin
//From Table A-22,
h3 = 1999.1                                                                     //in kj/kg
vr3 = 3.97

p3 = p2
//For the isentropic expansion process 3–4
vr4 = (r/rc)*vr3
//Interpolating in Table A-22 with vr4, we get
u4 = 664.3                                                                      //in kj/kg
T4 = 887.7                                                                      //in kelvin
//the ideal gas equation of state applied at states 1 and 4 gives
p4 = p1*(T4/T1)                                                                 //in MPa
printf('at state1, the pressure in bar is:  %f',p1)
printf('\natstate1, the temperature in kelvin is  %f',T1)
printf('\n\nat state2, the pressure in bar is:  %f',p2)
printf('\natstate2, the temperature in kelvin is  %f',T2)
printf('\n\nat state3, the pressure in bar is:  %f',p3)
printf('\natstate3, the temperature in kelvin is  %f',T3)
printf('\n\nat state4, the pressure in bar is:  %f',p4)
printf('\natstate4, the temperature in kelvin is  %f',T4)

//part(b)
eta = 1- (u4-u1)/(h3-h2)
printf('\n\n\nthe thermal efficiency is:  %f',eta)

//part(c)
wcycle = (h3-h2)-(u4-u1)                                                        //The net work of the cycle in kj/kg
R = 8.314                                                                       //universal gas constant, in SI units
M = 28.97                                                                       //molar mass of air in grams
v1 = ((R/M)*T1/p1)/10^3                                                         //The specific volume at state 1 in m^3/kg

mep = (wcycle/(v1*(1-1/r)))*10^3*10^-6                                          //in MPa
printf('\n\n\nthe mean effective pressure, in MPa is:  %f',mep)






















