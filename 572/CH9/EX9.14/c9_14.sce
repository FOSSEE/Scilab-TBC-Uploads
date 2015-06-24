//(9.14)  A converging nozzle has an exit area of 0.001 m2. Air enters the nozzle with negligible velocity at a pressure of 1.0 MPa and a temperature of 360 K. For isentropic flow of an ideal gas with k = 1.4, determine the mass flow rate, in kg/s, and the exit Mach number for back pressures of (a) 500 kPa and (b) 784 kPa.

//solution

//variable initialization
Tnot = 360                                                                      //in kelvin
pnot = 1                                                                        //in MPa
A2 = .001                                                                       //in m^2
k = 1.4

pstarbypnot = (1+(k-1)/2)^(k/(1-k))
pstar =  pstarbypnot*pnot
//part(a)
//since back pressure of 500 kpa is less than critical pressure pstar(528kpa in this case) found above, the nozzle is choked
//at the exit
M = 1
p2 = pstar                                                                      //in MPa
printf('the exit mach number for back pressure of 500kpa is:  %f',M)
T2 = Tnot/(1+((k-1)/2)*(M^2))                                                    //exit temperature in kelvin
R = 8.314                                                                       //universal gas constant, in SI units
M = 28.97                                                                       //molar mass of air in grams
V2 = sqrt(k*(R/M)*T2*10^3)                                                           //exit velocity in m/s
mdot = (p2/((R/M)*T2))*A2*V2*10^3                                               //mass flow rate in kg/s
printf('\nthe mass flow rate in kg/s for back pressure of 500kpa is:  %f',mdot)

//part(b)
//since the back pressure of 784kpa is greater than critical pressure of pstar determined above,the flow throughout the nozzle is subsonic and the exit pressure equals the back pressure,
p2 = 784                                                                        //exit pressure in kpa
M2 = {(2/(k-1))*[(pnot*10^3/p2)^((k-1)/k)-1]}^.5                                //exit mach number
T2 = Tnot/(1+((k-1)/2)*(M2^2))                                                  //exit temperature in kelvin
V2 = M2*sqrt(k*(R/M)*10^3*T2)                                                   //exit velocity in m/s
mdot2 = (p2/((R/M)*T2))*A2*V2                                                   //mass flow rate in kg/s
printf('\n\nthe mass flow rate at the exit in kg/s for back pressure of 784kpa is:  %f',mdot2)
printf('\nthe exit mach number for back pressure of 784 kpa is:  %f',M2)

















