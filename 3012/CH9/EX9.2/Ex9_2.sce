
// Given :-
clc;
r = 18.00                                                                   // compression ratio
T1 = 300.00                                                                 // temperature at the beginning of the compression process in kelvin
p1 = 0.1                                                                    // pressure at the beginning of the compression process in MPa
rc = 2.00                                                                   // cutoff ratio

// Part(a)
// With T1 = 300 K, Table A-22 gives
u1 = 214.07                                                                 // in kj/kg
vr1 = 621.2                             
// Interpolating in Table A-22, we get
T2 = 898.3                                                                  // in kelvin            
h2 = 930.98                                                                 // in kj/kg
// From Table A-22,
h3 = 1999.1                                                                 // in kj/kg
vr3 = 3.97

// Interpolating in Table A-22 with vr4, we get
u4 = 664.3                                                                  // in kj/kg
T4 = 887.7                                                                  // in kelvin

// Calculations
// Since Process 2–3 occurs at constant pressure, the ideal gas equation of state gives
T3 = rc*T2                                                                  // in kelvin
// With the ideal gas equation of state
p2 = p1*(T2/T1)*(r)                                                         // in MPa
p3 = p2
// For the isentropic compression process 1–2
vr2 = vr1/r
// For the isentropic expansion process 3–4
vr4 = (r/rc)*vr3
// The ideal gas equation of state applied at states 1 and 4 gives
p4 = p1*(T4/T1)                                                             // in MPa

// Results
printf( '\n At state1, the pressure is : %.2f bar.',p1)
printf( '\n At state1, the temperature is %.2f kelvin.' ,T1)
printf( '\n At state2, the pressure in bar is : %.2f bar.',p2)
printf( '\n At state2, the temperature is  %.2f kelvin.',T2)
printf( '\n At state3, the pressure in bar is : %.2f bar.',p3)
printf( '\n At state3, the temperature is %.2f kelvin.',T3)
printf( '\n At state4, the pressure is: %.2f MPa.',p4)
printf( '\n At state4, the temperature is %.2f kelvin.',T4)

// Part(b)
eta = 1- (u4-u1)/(h3-h2)
printf( '\n The thermal efficiency is : %.2f ',eta)

// Part(c)
R = 8.314                                                                    // universal gas constant, in SI units
M = 28.97                                                                    // molar mass of air in grams

// Calculations
wcycle = (h3-h2)-(u4-u1)                                                     // The net work of the cycle in kj/kg
v1 = ((R/M)*T1/p1)/10**3                                                      // The specific volume at state 1 in m^3/kg
mep = (wcycle/(v1*(1-1/r)))*10**3*10**-6                                       // in MPa

// Results
printf( '\n The mean effective pressure, is : %.2f MPa.',mep)
