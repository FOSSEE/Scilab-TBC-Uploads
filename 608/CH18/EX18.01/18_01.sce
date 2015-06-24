//Problem 18.01: A differential amplifier has an open-loop voltage gain of 120. The input signals are 2.45 V and 2.35 V. Calculate the output voltage of the amplifier

//initializing the variables:
Vi2 = 2.45; // in Volts
Vi1 = 2.35; // in Volts
A0 = 120; // open-loop voltage gain

//calculation:
Vo = A0*(Vi2 - Vi1)

printf("\n\n Result \n\n")
printf("\n the output voltage is %.0f V",Vo)