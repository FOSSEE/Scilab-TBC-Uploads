clear//

//Variables

Idc = 0.5                                    //dc current (in Ampere)
Vrms = 100.0                                 //Rms voltage (in volts)
alpha = 45.0                                 //Firing angle (in degree)       
Idc = 0.5                                    //dc current (in Ampere)

//Calculation

alpharad = alpha * %pi / 180.0           //Firing angle (in radians)
Vm = 2**0.5 * Vrms                           //Peak voltage (in volts) 
Vdc = Vm / (2 * %pi)*(1 + cos(alpharad)) //Average voltage (in volts)
RL = Vdc / Idc                               //Load resistance (in ohm)  

//Result

printf("\n The value of resistance to limit the average current to 0.5 A is  %0.2f  ohm.",RL)
