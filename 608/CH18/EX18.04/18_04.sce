//Problem 18.04: In the inverting amplifier of Figure 18.5, Ri = 1 kohm and Rf = 2 kohm. Determine the output voltage when the input voltage is: (a)+0.4 V (b) -1.2 V

//initializing the variables:
Rf = 2000; // in ohms
Ri = 1000; // in ohms
Vi1 = 0.4; // in Volts
Vi2 = -1.2; // in Volts

//calculation:
Vo1 = -1*Rf*Vi1/Ri
Vo2 = -1*Rf*Vi2/Ri

printf("\n\n Result \n\n")
printf("\n output voltage when the input voltage is 0.4V is %.1f V and when the input voltage is -1.2V is %.1f V",Vo1, Vo2)