//(14.10)  A closed system at a temperature of 20C and a pressure of 1 bar consists of a pure liquid water phase in equilibrium with a vapor phase composed of water vapor and dry air. Determine the departure, in percent, of the partial pressure of the water vapor from the saturation pressure of water at 20C.



//solution
//With data from Table A-2 at 20C,
vf = 1.0018e-3                                                                  //in m^3/kg
psat = .0239                                                                    //in bar
p = 1                                                                           //in bar
T = 293.15                                                                      //in kelvin

Rbar = 8.314                                                                    //universal gas constant in SI units
M = 18.02                                                                       //molat mass of water in kg/kmol

pvbypsat = %e^(vf*(p-psat)*10^5/[(1000*Rbar/M)*T])

percent = (pvbypsat-1)*100
printf('the departure, in percent, of the partial pressure of the water vapor from the saturation pressure of water at 20 is:  %f',percent)