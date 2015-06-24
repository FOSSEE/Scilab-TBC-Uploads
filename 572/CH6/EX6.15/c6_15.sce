//(6.15)   An air compressor operates at steady state with air entering at p1 = 1 bar, T1=  20C, and exiting at =p2  5 bar. Determine the work and heat transfer per unit of mass passing through the device, in kJ/kg, if the air undergoes a polytropic process with n = 1.3. Neglect changes in kinetic and potential energy between the inlet and the exit. Use the ideal gas model for air.

//solution

//variable initialization
P1 = 1                                             //pressure of entering air in bar
T1 = 293                                           //temperature of entering air in kelvin
P2 = 5                                             //pressure of exit air in bar
n = 1.3

T2 = T1*((P2/P1)^((n-1)/n))                        //in kelvin
R = 8.314/28.97
wcvdot=((n*R)/(n-1))*(T1-T2)                      //in kj/kg

//from table A-22
h1 = 293.17                                       //in kj/kg
h2 = 426.35                                       // in kj/kg

Qcvdot= wcvdot + (h2-h1)                          //in kj/kg
printf('the work per unit mass passing through the device in kj/kg is: w = %f',wcvdot)
printf('\nthe heat transfer per unit mass in Kj/kg is : q = %f ',Qcvdot)