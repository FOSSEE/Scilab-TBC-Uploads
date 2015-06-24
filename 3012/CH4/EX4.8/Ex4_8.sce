// Given:-
T1 = 293.0                                            // In kelvin
P1= 1.01325 * (10**5)                                 // In pascal
V1max= 1.3                                            // maximum velocity of entering air in m/s
T2max= 305.0                                          // maximum temperature at the exit in kelvin
pec= -80.0                                            // power received by electronic components in watt
Pf= -18.0                                             // Power received by fan in watt
R= 8.314                                              // Universal gas constant
M= 28.97*(10**(-3))                                   // Molar mass of air in kg
Qcvdot=0                                              // Heat transfer from the outer surface of the electronics enclosure to the surroundings is negligible.
Cp= 1.005*(10**3)                                     // in j/kg*k


// Calculations:-

Wcvdot = pec +Pf                                      // total electric power provided to electronic components and fan in watt
mdotmin=  (-Wcvdot)/(Cp*(T2max-T1))                   // minimum mass flow rate
v1= ((R/M)*T1)/P1                                     // specific volume
A1min = (mdotmin*v1)/V1max
D1min = (4*A1min/(%pi))**(0.5)

// Results:-
printf( ' The smallest fan inlet diameter is %.2f cm',D1min*100)
