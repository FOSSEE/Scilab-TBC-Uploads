// Given:-
mR = 1.11                               // mass of the refrigerant in kg
T1 = -28.00                             // initial temperature of the saturated vapor in degree celcius
P2 = 1.4                                // final pressure of the refrigerant in bar
T0 = 293.00                             // in kelvin
P0 = 1.00                               // in bar

// Part (a)
// From table A-10
u1 = 211.29                             // in kj/kg
v1 = 0.2052                             // in m^3/kg
s1 = 0.9411                             // in kj/kg.k
// From table A-12
u0 = 246.67                             // in kj/kg
v0 = 0.23349                            // in m^3/kg
s0 = 1.0829                             // in kj/kg.k

// From table A-12
u2 = 300.16                             // in kj/kg
s2 = 1.2369                             // in kj/kg.k
v2 = v1

// Calculations 
E1 = mR*((u1-u0) + P0*(10**5)*(v1-v0)*(10**(-3))-T0*(s1-s0))
E2 = mR*((u2-u0) + P0*(10**5)*(v2-v0)*(10**(-3))-T0*(s2-s0))

// Results for Part A
printf( ' Part(a) The initial exergy is %.2f kJ.',E1)
printf( ' The final exergy is %.2f kJ.',E2)
printf( ' The change in exergy of the refrigerant is %.2f kj',E2-E1)


// Part (b)
// Calculations
deltaU = mR*(u2-u1)
// From energy balance
deltaPE = -deltaU
// With the assumption::The only significant changes of state are experienced by the refrigerant and the suspended mass. For the refrigerant, 
// there is no change in kinetic or potential energy. For the suspended mass, there is no change in kinetic or internal energy. Elevation is 
// the only intensive property of the suspended mass that changes
deltaE = deltaPE

// Results for part b
printf( ' Part(b)The change in exergy of the suspended mass is %.3f kJ',deltaE)


// Part(c)
// Calculations
deltaEiso = (E2-E1) + deltaE

// Results
printf( ' Part(c)The change in exergy of an isolated system of the vessel and pulley–mass assembly is  %.2f kJ',deltaEiso)
