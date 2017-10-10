clear//

//Variables

L1 = 2.0 * 10**-3                         //Inductance1 (in Henry)
L2 = 20.0 * 10**-6                        //Inductance2 (in Henry)
fomin = 950.0 * 10**3                     //Frequency minimum (in Hertz)
fomax = 2050.0 * 10**3                    //Frequency maximum (in Hertz)

//Calculation

L = L1 + L2                               //Net inductance (in Henry)
C1 = 1.0/(4 * %pi**2*(L*fomin**2))    //Capacitance1 (in Farad)
C2 = 1.0/(4 * %pi**2*(L*fomax**2))    //Capacitance2 (in Farad)

//Result

printf("\n Range of capacitance required is  %0.2f  pF and  %0.1f  pF.",C2*10**12,C1*10**12)
