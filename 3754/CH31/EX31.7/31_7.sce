clear//

//Variables
  
L1 = 0.1 * 10**-3                         //Inductance1 (in Henry)
L2 = 10.0 * 10**-6                        //Inductance2 (in Henry)
M = 20.0 * 10**-6                         //Mutual Inductance (in Hnery)                          
fo = 4110.0 * 10**3                       //Frequency (in Hertz)

//Calculation

L = L1 + L2 + 2*M                         //Net inductance (in Henry)
C = 1.0/(4 * %pi**2 * L*fo**2)        //Capacitance (in Farad)
beta = L2 / L1                            //Feedback ratio
Av = 1/beta                               //Voltage gain

//Result

printf("\n Capacitance required is  %0.4f  pF.\nVoltage gain for sustained condition is  %0.3f .",C*10**12,Av)
