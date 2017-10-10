clear//

//Variables

C1 = 0.001 * 10**-6                      //Capacitance (in Farad)                         
C2 = 0.01 * 10**-6                       //Capacitance (in Farad)
L = 5.0 * 10**-6                         //Inductance (in Henry) 

//Calculation

Av = C2 / C1                             //Voltage gain
C = C1 * C2 / (C1 + C2)                  //Net capacitance (in Farad)
fo = 1 /(2*%pi*(L * C)**0.5)         //Frequency (in Hertz) 

//Result

printf("\n Required voltage gain is  %0.3f .\nFrequency of oscillation is  %0.2f  Mhz.",Av,fo*10**-6)
