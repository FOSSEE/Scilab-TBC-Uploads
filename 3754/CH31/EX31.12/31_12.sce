clear//

//Variables

C1 = 0.1 * 10**-6                   //Capacitance (in Farad)
C2 = 1.0 * 10**-6                   //Capacitance (in Farad)    
C3 = 100.0 * 10**-12                //Capacitance (in Farad)
L = 470.0 * 10**-6                  //Inductance (in Henry)

//Calculation

C = (1.0/C1 + 1.0/C2 +1.0/C3)**-1   //Capacitance (in Farad)    
fo = 1/(2*%pi *(L*C)**0.5)      //Frequency (in Hertz)

//Result

printf("\n Frequency of oscillation is  %0.1f  kHz.",fo * 10**-3)
