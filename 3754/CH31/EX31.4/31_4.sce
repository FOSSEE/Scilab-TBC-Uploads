clear//

//Variables

L1 = 1000.0 * 10**-6                  //Inductance1 (in Henry)
L2 = 100.0 * 10**-6                   //Inductance2 (in Henry)
M = 20.0 * 10**-6                     //Mutual Inductance (in Henry)
C = 20.0 * 10**-12                    //Capacitance (in Farad)                      

//Calculation

L = L1 + L2 + 2 * M                  //Net inductance (in Henry)
fo = 1/(2*%pi*(L * C)**0.5)      //Frequency of oscillations (in Hertz)

//Result

printf("\n Frequency of oscillations is  %0.3f ",fo*10**-6)
