// Given:-
// Part(a)
Mt = 0.7                                                                         // mach mumber at the throat
At = 6.25                                                                        // throat area in cm^2
Ae = 15.00                                                                       // exit area in cm^2

// The flow throughout the nozzle, including the exit, is subsonic. Accordingly, with this value for A2byAstar, Table 9.1 gives
M2 = 0.24
// For M2 = 0.24,
T2byTnot = 0.988
p2bypnot = 0.959
k = 1.4
T0 = 280.00                                                                      // in kelvin
pnot = 6.8                                                                       // in bars
// Calculations
// With Mt = 0.7, Table 9.1 gives
AtbyAstar = 1.09437
A2byAstar = (Ae/At)*AtbyAstar
T2 = T2byTnot*T0                                                                 // in kelvin
p2 = p2bypnot*pnot                                                               // in bars
V2 = M2*((k*(8.314/28.97)*T2*10**3)**0.5)                                         // velocity at the exit in m/s
mdot = (p2/((8.314/28.97)*T2))*Ae*V2*10**-2                                      // mass flow rate in kg/s
// Results
printf( ' Part(a)  the mass flow rate in kg/s is:  %.2f',mdot)
printf( ' The exit pressure in bars is:  %.2f',p2)
printf( ' The exit mach number is:  %.2f',M2)

// Part(b)
Mt = 1.00                                                                        // mach number at the throat
// From table 9.1
M2 = 0.26
T2byTnot = 0.986                                                                 
p2bypnot = 0.953

T0 = 280.00                                                                      // in kelvin
pnot = 6.8                                                                       // in bars
// Calculations
T2 = T2byTnot*T0                                                                 // in kelvin
p2 = p2bypnot*pnot                                                               // in bars
k = 1.4
V2 = M2*((k*(8314/28.97)*T2)**0.5)                                                  // exit velocity in m/s
mdot = (p2/((8.314/28.97)*T2))*Ae*V2*10**-2                                      // mass flow rate in kg/s
// Results
printf( ' Part(b)  the mass flow rate  is:  %.f kg/s.',mdot)
printf( ' The exit pressure is: %f bars. ',p2)
printf( ' The exit mach number is:  %f',M2)

// Part(c)
// From part (b), the exit Mach number in the present part of the example is
M2 = 2.4
// Using this, Table 9.1 gives
p2bypnot = 0.0684
pnot = 6.8                                                                       // in bars
// Calculation
p2 = p2bypnot*pnot                                                               // in bars
// Results
// Since the nozzle is choked, the mass flow rate is the same as found in part (b).
printf( ' Part(c)  the mass flow rate is:  %f kg/s.',mdot)
printf( ' The exit pressure is:  %f bars.',p2)
printf( ' The exit mach number is:  %f',M2)

// Part(d)
// Since a normal shock stands at the exit and the flow upstream of the shock is isentropic, the Mach number Mx and the pressure px correspond to the values found in part (c), 
Mx = 2.4
px = 0.465                                                                       // in bars
// Then, from Table 9.2
My = 0.52
//py is the exit pressure
pybypx = 6.5533
py = px*pybypx

// The pressure downstream of the shock is thus 3.047 bars. This is the exit pressure
// The mass flow is the same as found in part (b).
// Results
printf( ' Part(d)  the mass flow rate is:  %f kg/s.',mdot)
printf( ' The exit pressure is:  %.3f bars.',py)
printf( ' The exit mach number is:  %f',My)

// Part(e)
// A shock stands in the diverging portion where the area is
Ax = 12.5                                                                       // in cm^2
// Since a shock occurs, the flow is sonic at the throat, so
Axstar = 6.25                                                                   // in cm^2
At = Axstar
// The Mach number Mx can then be found from Table 9.1, by using AxbyAxstar as
Mx = 2.2

// Results
// With Mx = 2.2, the ratio of stagnation pressures is obtained from Table 9.2 as
pnotybypnotx = 0.62812

// Using this ratio and noting that the flow is subsonic after the shock, Table 9.1 gives
M2 = 0.43
// For M2 = 0.43,
p2bypnoty = 0.88
// Calculations
A2byAystar = (Ae/Axstar)*pnotybypnotx
p2 = p2bypnoty*pnotybypnotx*pnot                                                // in bars

// Results
// Since the flow is choked, the mass flow rate is the same as that found in part (b).
printf( ' part(e)  the mass flow rate is: %f kg/s.',mdot)
printf( ' the exit pressure is:  %f bars',p2)
printf( ' the exit mach number is:  %f',M2)
