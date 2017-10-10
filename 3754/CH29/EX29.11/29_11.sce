clear//

//Variables

Rin = 4.2 * 10**3                    //Input resistance (in ohm)
Av = 220.0                           //Voltage gain without feedback
beta = 0.01                          //Feedback ratio
f1 = 1.5 * 10**3                     //Cut off frequency without feedback (in Hertz)
f2 = 501.5 * 10**3                   //Cut off frequency with feedback (in Hertz)

//Calculation

R1i = (1 + beta * Av) * Rin          //Input resistance of feedback amplifier (in ohm)
f11 = f1 / (1 + beta * Av)           //New cut off frequency without feedback (in Hertz) 
f21 = (1 + beta * Av) * f2           //New cut off frequency with feedback (in Hertz)  

//Result

printf("\n The value of input resistance with feedback is  %0.3f  kilo-ohm.\nNew cut off frequency without feedback is  %0.0f  Hz.\nNew cut off frequency with feedback is  %0.3f   kHz.",R1i*10**-3,f11,f21*10**-3)
