clear//

//Variables

C1 = 0.1 * 10**-6                   //Capacitance (in Farad)
C2 = 1.0 * 10**-6                   //Capacitance (in Farad)
L = 470.0 * 10**-6                  //Inductance (in Henry)  

//Calculation

C = C1 * C2/ (C1 + C2)              //Net capacitance (in Farad)     
fo = 1 /(2*%pi*(L * C)**0.5)    //Frequency (in Hertz) 

//Result

printf("\n Frequency of oscillation is  %0.2f  kHz.",fo * 10**-3)
