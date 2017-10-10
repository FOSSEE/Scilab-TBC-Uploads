clear//

//Variables

Av = 400.0                     //Voltage gain
beta = 0.1                     //feedback ratio

//Calculation

A1v = Av / (1 + beta * Av)     //Voltage gain with negative feedback

//Result

printf("\n The voltage gain of an amplifier with negative feedback is  %0.2f .",A1v)
