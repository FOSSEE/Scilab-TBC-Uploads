//Problem 14.07: Determine the peak and mean values for a 240 V mains supply.

//initializing the variables:
Vrms = 240; // in Volts

//calculation:
//for a sine wave
Vmax = Vrms*(2^0.5)
Vmean = 0.637*Vmax

printf("\n\n Result \n\n") 
printf("\n peak value = %.1f V",Vmax)
printf("\n mean value = %.1f V",Vmean)