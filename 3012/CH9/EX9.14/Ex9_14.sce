
// Given:-
Tnot = 360.00                                                                      // in kelvin
pnot = 1.00                                                                        // in MPa
A2 = 0.001                                                                         // in m^2
k = 1.4

// Calculations
pstarbypnot = (1+(k-1)/2)**(k/(1-k))
pstar =  pstarbypnot*pnot

// Part(a)
// Since back pressure of 500 kpa is less than critical pressure pstar(528kpa in this case) found above, the nozzle is choked
// At the exit
M = 1.00
p2 = pstar                                                                         // in MPa
T2 = Tnot/(1+((k-1)/2)*(M**2))                                                     // exit temperature in kelvin
R = 8.314                                                                          // universal gas constant, in SI units
Mwt = 28.97                                                                        // molar mass of air in grams
V2 = ((k*(R/Mwt)*T2*10**3)**0.5)                                                   // exit velocity in m/s
mdot = (p2/((R/Mwt)*T2))*A2*V2*10**3                                               // mass flow rate in kg/s

// Results
printf( ' The exit mach number for back pressure of 500kpa is: %.2f',M)
printf( ' The mass flow rate in kg/s for back pressure of 500kpa is: %.2f',mdot)

// Part(b)
// Since the back pressure of 784kpa is greater than critical pressure of pstar determined above,the flow throughout the nozzle is subsonic and the exit pressure equals the back pressure,
p2 = 784.00                                                                        // exit pressure in kpa
// Calculations
M2 = (((2.00)/(k-1))*(((pnot*10**3)/p2)**((k-1)/k)-1))**0.5                        // exit mach number
T2 = Tnot/(1+((k-1)/2)*(M2**2))                                                    // exit temperature in kelvin
V2 = M2*((k*(R/Mwt)*10**3*T2)**0.5)                                                // exit velocity in m/s
mdot2 = (p2/((R/Mwt)*T2))*A2*V2                                                    // mass flow rate in kg/s
// Results
printf( ' The mass flow rate at the exit for back pressure of 784kpa is: %.2f kg/s.',mdot2)
printf( ' The exit mach number for back pressure of 784 kpa is: %.2f',M2)
