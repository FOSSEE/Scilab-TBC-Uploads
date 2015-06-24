//(9.15)  A converging–diverging nozzle operating at steady state has a throat area of 6.25 cm2 and an exit area of 15 cm2. Air enters the nozzle with a negligible velocity at a pressure of 6.8 bars and a temperature of 280 K. For air as an ideal gas with k = 1.4, determine the mass flow rate, in kg/s, the exit pressure, in bars, and exit Mach number for each of the five following cases. (a) Isentropic flow with M = 0.7 at the throat. (b) Isentropic flow with M = 1 at the throat and the diverging portion acting as a diffuser. (c) Isentropic flow with M = 1 at the throat and the diverging portion acting as a nozzle. (d) Isentropic flow through the nozzle with a normal shock standing at the exit. (e) A normal shock stands in the diverging section at a location where the area is 12.5 cm2. Elsewhere in the nozzle, the flow is isentropic.

//solution

//part(a)
Mt = .7                                                                         //mach mumber at the throat
At = 6.25                                                                       //throat area in cm^2
Ae = 15                                                                         //exit area in cm^2
//With Mt = 0.7, Table 9.1 gives
AtbyAstar = 1.09437

A2byAstar = (Ae/At)*AtbyAstar
//The flow throughout the nozzle, including the exit, is subsonic. Accordingly, with this value for A2byAstar, Table 9.1 gives
M2 = .24
//For M2 = 0.24,
T2byTnot = .988
p2bypnot = .959
k = 1.4
T0 = 280                                                                        //in kelvin
pnot = 6.8                                                                      //in bars

T2 = T2byTnot*T0                                                                //in kelvin
p2 = p2bypnot*pnot                                                              //in bars

V2 = M2*sqrt((k*(8.314/28.97)*T2*10^3))                                         //velocity at the exit in m/s
mdot = (p2/((8.314/28.97)*T2))*Ae*V2*10^-2                                       //mass flow rate in kg/s
printf('part(a)  the mass flow rate in kg/s is:  %f',mdot)
printf('\nthe exit pressure in bars is:  %f',p2)
printf('\nthe exit mach number is:  %f',M2)

//part(b)
Mt = 1                                                                          //mach number at the throat
//from table 9.1
M2 = .26
T2byTnot = .986                                                                 
p2bypnot = .953

T0 = 280                                                                        //in kelvin
pnot = 6.8                                                                      //in bars

T2 = T2byTnot*T0                                                                //in kelvin
p2 = p2bypnot*pnot                                                              //in bars
k = 1.4
V2 = M2*sqrt(k*(8314/28.97)*T2)                                                 //exit velocity in m/s
mdot = (p2/((8.314/28.97)*T2))*Ae*V2*10^-2                                            //mass flow rate in kg/s

printf('\n\n\npart(b)  the mass flow rate in kg/s is:  %f',mdot)
printf('\nthe exit pressure in bars is:  %f',p2)
printf('\nthe exit mach number is:  %f',M2)

//part(c)
//from part (b), the exit Mach number in the present part of the example is
M2 = 2.4
//Using this, Table 9.1 gives
p2bypnot = .0684

pnot = 6.8                                                                      //in bars

p2 = p2bypnot*pnot                                                              //in bars
//Since the nozzle is choked, the mass flow rate is the same as found in part (b).
printf('\n\n\npart(c)  the mass flow rate in kg/s is:  %f',mdot)
printf('\nthe exit pressure in bars is:  %f',p2)
printf('\nthe exit mach number is:  %f',M2)

//part(d)
//Since a normal shock stands at the exit and the flow upstream of the shock is isentropic, the Mach number Mx and the pressure px correspond to the values found in part (c), 
Mx = 2.4
px = .465                                                                       //in bars
//Then, from Table 9.2
My = .52
pybypx = 6.5533
//The pressure downstream of the shock is thus 3.047 bars. This is the exit pressure
//The mass flow is the same as found in part (b).

printf('\n\n\npart(d)  the mass flow rate in kg/s is:  %f',mdot)
printf('\nthe exit pressure in bars is:  %f',3.047)
printf('\nthe exit mach number is:  %f',My)

//part(e)
//a shock stands in the diverging portion where the area is
Ax = 12.5                                                                       //in cm^2
//Since a shock occurs, the flow is sonic at the throat, so
Axstar = 6.25                                                                   //in cm^2
At = Axstar
//The Mach number Mx can then be found from Table 9.1, by using AxbyAxstar as
Mx = 2.2
//With Mx = 2.2, the ratio of stagnation pressures is obtained from Table 9.2 as
pnotybypnotx = .62812

A2byAystar = (Ae/Axstar)*pnotybypnotx
//Using this ratio and noting that the flow is subsonic after the shock, Table 9.1 gives
M2 = .43
//for M2 = .43,
p2bypnoty = .88

p2 = p2bypnoty*pnotybypnotx*pnot                                                //in bars
//Since the flow is choked, the mass flow rate is the same as that found in part (b).
printf('\n\n\npart(e)  the mass flow rate in kg/s is:  %f',mdot)
printf('\nthe exit pressure in bars is:  %f',p2)
printf('\nthe exit mach number is:  %f',M2)


































































