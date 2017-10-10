clear//

//Variables

C = 100.0 * 10**-12                  //Capacitance (in Farad)
L1 = 30.0 * 10**-6                   //Inductance1 (in Henry)
L2 = 1.0 * 10**-8                    //Inductance2 (in Henry)   

//Calculation

L = L1 + L2                          //Net inductance (in Henry)
fo = 1/(2*%pi*(L * C)**0.5)      //Frequency of oscillations (in Hertz)

//Result

printf("\n Frequency of oscillations is  %0.1f ",fo*10**-6)
