clear//

//Variables

R1 = 2.2 * 10**3                     //Resistance (in ohm)
C1 = 0.01 * 10**-6                   //Capacitance (in Farad)

//Calculation

tp = 1.1 * R1 * C1                   //Pulse width (in seconds)

//Result

printf("\n The pulse width is  %0.3f  micro-second.",tp * 10**6)
