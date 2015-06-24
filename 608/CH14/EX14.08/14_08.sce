//Problem 14.08: A supply voltage has a mean value of 150 V. Determine its maximum value and its rms value

//initializing the variables:
Vmean = 150; // in Volts

//calculation:
//for a sine wave
Vmax = Vmean/0.637
Vrms = 0.707*Vmax

printf("\n\n Result \n\n") 
printf("\n peak value = %.1f V",Vmax)
printf("\n rms value = %.1f V",Vrms)