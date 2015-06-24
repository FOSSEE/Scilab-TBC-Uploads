// Given:-
T1 = 300.00                                                           // The temperature at the beginning of the compression process in kelvin
p1 = 1.00                                                             // the pressure at the beginning of the compression process in bar
r = 8.00                                                              // compression ratio
V1 = 560.00                                                           // the volume at the beginning of the compression process in cm^3
T3 = 2000.00                                                          // maximum temperature during the cycle in kelvin

// Part(a)
// At T1 = 300k,table A-22 gives
u1 = 214.07                                                            // in kj/kg
vr1 = 621.2             
// Interpolating with vr2 in Table A-22, we get
T2 = 673.00                                                            // in kelvin
u2 = 491.2                                                             // in kj/kg
// At T3 = 2000 K, Table A-22 gives
u3 = 1678.7                                                            // in kj/kg
vr3 = 2.776
// Interpolating in Table A-22 with vr4 gives
T4 = 1043                                                              // in kelvin
u4 = 795.8                                                             // in kj/kg

// Calculations
// For the isentropic compression Process 1–2
vr2 = vr1/r
// With the ideal gas equation of state
p2 = p1*(T2/T1)*(r)                                                     // in bars
// Since Process 2–3 occurs at constant volume, the ideal gas equation of state gives
p3 = p2*(T3/T2)                                                         // in bars
// For the isentropic expansion process 3–4
vr4 = vr3*(r)
// The ideal gas equation of state applied at states 1 and 4 gives
p4 = p1*(T4/T1)                                                         // in bars

// Results
printf( ' At state1, the pressure is: %f bar.',p1)
printf( ' At state1, the temperature is %f kelvin.',T1)
printf( ' At state2, the pressure is : %.3f bar.',p2)
printf( ' At state2, the temperature is %f kelvin.',T2)
printf( ' At state3, the pressure is : %.3f bar.',p3)
printf( ' At state3, the temperature is %f kelvin.',T3)
printf( ' At state4, the pressure is : %.4f bar.',p4)
printf( ' At state4, the temperature is %f kelvin.',T4)

// Part(b)
eta = 1-(u4-u1)/(u3-u2)                                                     // thermal efficiency
// Result
printf( ' The thermal efficiency is : %.2f ',eta)

// Part(c)
R = 8.314                                                                   // universal gas constant, in SI units
M = 28.97                                                                   // molar mass of air in grams
// Calculations
m = ((p1*V1)/((R/M)*T1))*10**-6*10**5*10**-3                                // mass of the air in kg
Wcycle = m*((u3-u4)-(u2-u1))                                                // the net work per cycle in KJ
mep = (Wcycle/(V1*(1-1/r)))*10**6*10**3*10**-5                               // in bars

// Result
printf( ' The mean effective pressure, is : %.4f atm.',mep)
