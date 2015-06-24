// Given:- 
Pv = 15.0                                            // pressure in the vessel in bar
Tv = 320.0                                           // temperature in the vessel in degree celcius
Vt = 0.6                                             // volume of a tank in m^3
Tt = 400.0                                           // temperature in the tank in degree celcius when the tank is full

// Since the tank is initially empty:-
m1 = 0
u1 = 0

// From table A-4, at 15bar and 400 degree celcius:-
v2 = 0.203                                           // Volume in m^3/kg
m2 = Vt/v2                                           // mass within the tank at the end of the process in kg
hi = 3081.9                                          // in kj/kg
u2 = 2951.3                                          // in kj/kg

// Calculations:-
deltaUcv = m2*u2-m1*u1
Wcv = hi*(m2-m1)-deltaUcv

// Results:-
printf( ' The amount of work developed by the turbine is %.2f kJ.',Wcv)
