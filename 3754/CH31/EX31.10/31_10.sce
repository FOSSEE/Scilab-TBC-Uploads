clear//

//Variables

C1 = 100.0 * 10**-12                    //Capacitance (in Farad)
C2 = 7500.0 * 10**-12                   //Capacitance (in Farad)
fomin = 950.0 * 10**3                   //Frequency minimum (in Hertz)
fomax = 2050.0 * 10**3                  //Frequency maximum (in Hertz)

//Calculation

C = C1 * C2/ (C1 + C2)                  //Net capacitance (in Farad)     
L1 = 1.0/(4 * %pi**2*(C*fomin**2))  //Inductance1 (in Henry)
L2 = 1.0/(4 * %pi**2*(C*fomax**2))  //Inductance2 (in Henry)

//Result

printf("\n The range of inductance required is from  %0.0f  micro-Henry to  %0.0f  micro-Henry.",L2*10**6,L1*10**6)
