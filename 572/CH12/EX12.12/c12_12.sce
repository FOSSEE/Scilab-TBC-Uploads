//(12.12)  Moist air with a temperature of 22C and a wet-bulb temperature of 9C enters a steam-spray humidifier. The mass flow rate of the dry air is 90 kg/min. Saturated water vapor at 110C is injected into the mixture at a rate of 52 kg/h. There is no heat transfer with the surroundings, and the pressure is constant throughout at 1 bar. Using the psychrometric chart, determine at the exit (a) the humidity ratio and (b) the temperature, in C.

//solution

//variable initialization
T1 = 22                                                                         //entry temperature of moist air in degree celcius
Twb = 9                                                                         //wet-bulb temperature of entering moist air in degree celcius
madot = 90                                                                      //mass flow rate of dry air in kg/min
Tst = 110                                                                       //temperature of injected saturated water vapor in degree celcius
mstdot = 52                                                                     //mass flow rate of injected saturated water vapor in kg/h
p = 1                                                                           //pressure in bar

//part(a)
//by inspection of the psychrometric chart
omega1 = .002
omega2 = omega1 + mstdot/(madot*60)
printf('the humidity ratio at the exit is:  %f',omega2)

//part(b)
// the steady-state form of the energy rate balance can be rearranged as
//(ha + omega*hg)2 = (ha + omega*hg)1 + (omega2-omega1)*hg3
//on putting values in the above equation from tables and figures, temperature at the exit can then be read directly from the chart
T2 = 23.5                                                                       //in degree celcius
printf('\n\nthe temperature at the exit in degree celcius is:  %f',T2)


