clear//

//Variables

C = 1.0 * 10**-9                       //Capacitance (in Farad)
L1 = 4.7 * 10**-3                      //Inductance1 (in Henry)
L2 = 47.0 * 10**-6                     //Inductance2 (in Henry)

//Calculation

L = L1 + L2                            //Net inductance (in Henry)
fo = 1/(2*%pi*(L * C)**0.5)        //Frequency of oscillations (in Hertz)

//Result

printf("\n Frequency of oscillations is  %0.2f ",fo*10**-3)
